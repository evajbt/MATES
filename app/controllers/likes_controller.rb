class LikesController < ApplicationController
  def create
    # Récupérer l'utilisateur actuel
    current_user = User.find(params[:current_user_id])

    # Récupérer l'utilisateur aimé
    liked_user = User.find(params[:liked_user_id])

    # Créer une relation "like" entre les utilisateurs
    current_user.likes.create(liked_user: liked_user)

    # Vérifier si l'utilisateur aimé a également aimé l'utilisateur actuel
    if liked_user.likes.exists?(liked_user: current_user)
      # Si c'est le cas, créer une correspondance (match) entre les utilisateurs
      Match.create(user1: current_user, user2: liked_user)
    end
  end
end
