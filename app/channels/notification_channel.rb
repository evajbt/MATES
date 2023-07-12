class NotificationChannel < ApplicationCable::Channel
  def subscribed
    notification = current_user.notification.messages_unread
    stream_for notification
  end
end
