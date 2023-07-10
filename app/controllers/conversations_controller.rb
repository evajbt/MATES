class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @message = Message.new
    @liked_user = @conversation.match.like.liker
  end

  def index
    @conversations = Conversation.where("sender_id = ? OR recipient_id = ?", current_user.id, current_user.id)
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
    redirect_to conversations_path
  end
end
