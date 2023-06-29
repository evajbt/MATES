# app/controllers/matches_controller.rb
class MatchesController < ApplicationController
  def show
    @user = User.find(params[:profile_id])
    @match = Match.find(params[:id])
  end
    # def index
    # current_user = User.find(params[:current_user_id])
    # @matches = current_user.matches
    # end
end
