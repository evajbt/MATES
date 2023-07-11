class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find_by_id(params[:id])

    if @conversation
      @messages = @conversation.messages
      @message = Message.new
      @matched_user = (@conversation.match.like.liker == current_user) ? @conversation.match.like.liked : @conversation.match.like.liker
      @hidefooter = true
    else
      # Handle the case when the conversation doesn't exist
      flash[:error] = "Conversation not found."
      redirect_to conversations_path
    end
  end


  def index
    @conversations = Conversation.where("sender_id = ? OR recipient_id = ?", current_user.id, current_user.id)
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    if @conversation.destroy
      ActionCable.server.broadcast('conversation_channel', {
        event: 'deleted',
        conversation_id: @conversation.id
      })
      redirect_to conversations_path, notice: 'Conversation was successfully deleted.'
    else
      # handle failure
    end
  end
end
