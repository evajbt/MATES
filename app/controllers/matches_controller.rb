# app/controllers/matches_controller.rb
class MatchesController < ApplicationController
  def show
    @user = User.find(params[:profile_id])
    @match = Match.find(params[:id])
  end
end
