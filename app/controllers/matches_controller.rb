# app/controllers/matches_controller.rb
class MatchesController < ApplicationController
  def index
    # Récupérer les correspondances (matches) de l'utilisateur actuel
    current_user = User.find(params[:current_user_id])
    @matches = current_user.matches
  end
end
