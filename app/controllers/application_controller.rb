class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_profile

  private

  def set_profile
    @profile = current_user if user_signed_in?
  end
end
