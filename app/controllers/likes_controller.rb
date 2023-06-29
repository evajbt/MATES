class LikesController < ApplicationController
  def create
    current_user = User.find(params[:current_user_id])
    liked_user = User.find(params[:liked_user_id])
    if Like.exists?(liked: current_user, liker: liked_user)
      existing_like = Like.find_by(liked: current_user, liker: liked_user)
      @match = Match.create(like: existing_like)
      redirect_to profile_match_path(params[:profile_id], @match.id), notice: "User matched successfully."
    else
      @like = current_user.given_likes.create(liked: liked_user)
      redirect_to search_profiles_path(name: params[:name], level: params[:level], mood: params[:mood], gender: params[:gender], age: params[:age]), notice: "User liked successfully."
    end
  end
end
