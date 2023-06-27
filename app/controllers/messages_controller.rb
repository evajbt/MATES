class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params)
    @message.user = current_user

    if @message.save
      ConversationChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      # handle save failure
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
