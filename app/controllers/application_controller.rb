class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_profile

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def set_profile
    @profile = current_user if user_signed_in?
  end
end
