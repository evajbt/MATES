class Notification < ApplicationRecord
  belongs_to :user

  def notif_messages
    NotificationChannel.broadcast_to(
      
    )
    head :ok
  end
end
