class LikesController < ApplicationController
  def create
    current_user = User.find(params[:current_user_id])
    liked_user = User.find(params[:liked_user_id])

    if Like.exists?(liked: current_user, liker: liked_user)
      existing_like = Like.find_by(liked: current_user, liker: liked_user)
      @match = Match.create(like: existing_like)

      unless Conversation.exists?(sender_id: current_user.id, recipient_id: liked_user.id) || Conversation.exists?(sender_id: liked_user.id, recipient_id: current_user.id)
        @conversation = Conversation.create(match: @match, recipient: current_user, sender: liked_user)
      end
      respond_to do |format|
        format.html { redirect_to profile_match_path(params[:profile_id], @match.id)}
        format.json { render json: { match_path: profile_match_path(params[:profile_id], @match.id) } }
      end

    else
      @like = current_user.given_likes.create(liked: liked_user)
      # redirect_to search_profiles_path(name: params[:name], level: params[:level], mood: params[:mood], gender: params[:gender], age: params[:age])
      respond_to do |format|
        format.html { redirect_to search_profiles_path }
        format.json { render json: { status: 'success' } }
      end
    end
  end
end
