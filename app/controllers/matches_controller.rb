class MatchesController < ApplicationController
  def show
    @user = User.find(params[:profile_id])
    @match = Match.find(params[:id])
    @current_user = current_user
    @liked_user = @match.like.liker
  end
end
