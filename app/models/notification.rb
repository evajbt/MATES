class Notification < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :user_id
  after_save :broadcast_notification_update

  def broadcast_notification_update
    ActionCable.server.broadcast("notification_channel_#{user_id}", {
      messages_unread: messages_unread
    })
  end
end
