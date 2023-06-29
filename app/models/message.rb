class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates :content, presence: true

  after_create_commit :broadcast_message

  def broadcast_message
    ActionCable.server.broadcast("conversations_#{conversation.id}", {
      message: content,
      user: user.username
    })
  end
end
