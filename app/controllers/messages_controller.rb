class MessagesController < ApplicationController

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if params[:message][:first] && @message.save
      redirect_to conversation_path(@conversation)
    elsif @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        message: render_to_string(partial: "message", locals: { message: @message }),
        sender_id: @message.user.id
      )
      head :ok
    else
      # handle save failure
    end
    @conversation.sender.notification.update(messages_unread: true)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

end
