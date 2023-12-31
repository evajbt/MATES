module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private

    def find_verified_user
      # Add your authentication logic here to find the authenticated user
      # For example, if you're using Devise:
      verified_user = env['warden'].user
      return verified_user if verified_user

      reject_unauthorized_connection
    end
  end
end
