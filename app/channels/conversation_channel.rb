class ConversationChannel < ApplicationCable::Channel
  def subscribed
    conversation = Conversation.find(params[:id])
    stream_for conversation
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def delete_conversation(data)
    conversation = Conversation.find(data['conversation_id'])
    if conversation.destroy
      broadcast_to(conversation, { event: 'deleted', conversation_id: conversation.id })
    end
  end
end

  # def send_message(data)
  #   conversation = Conversation.find(data["conversation_id"])
  #   message = conversation.messages.create(user: current_user, content: data["content"])
  #   # Diffuser en utilisant le même canal que stream_for
  #   ActionCable.server.broadcast("conversation_#{conversation.id}", message: render_message(message))
  # end

  #private

#   def render_message(message)
#     ApplicationController.renderer.render(partial: 'messages/message', locals: { message: message })
#   end
