class UserGamesController < ApplicationController
  before_action :authenticate_user!, only: [:search]

  def new
    @profile = User.find(params[:profile_id])
    @user_game = @profile.user_games.build
    @games = Game.all
  end

  def create
    @profile = User.find(params[:profile_id])
    @user_game = @profile.user_games.build(user_game_params)
    if @user_game.save
      redirect_to profile_path(@profile), notice: "User game added successfully."
    else
      @games = Game.all
      render :new
    end
  end

  def edit
    @user_game = UserGame.find(params[:id])
  end

  def update
    @user_game = UserGame.find(params[:id])
    if @user_game.update(user_game_params)
      redirect_to profile_path(@user_game.user), notice: "User game information updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @profile = User.find(params[:profile_id])
    @user_game = @profile.user_games.find(params[:id])
    @user_game.destroy
    redirect_to profile_path(@profile)
  end

  def search

    if params[:name].nil? && current_user.search
      params.merge!(current_user.search.search_params)
    end
    # Récupérer l'id du profile/current_user
    @profile = current_user
    # Récupérer les jeux associés au profil
    @user_games = @profile.user_games
    # Effectuer la recherche en utilisant les paramètres de user_game
    # @search_results = User.joins(user_games: :game)
    #                       .where(user_games: { level: search_params[:level], mood: search_params[:mood] }, gender: search_params[:gender], games: { name: search_params[:name] })
    #                       .where.not(id: @profile.id)
    query = User.joins(user_games: :game).where.not(id: @profile.id).distinct

    if search_params[:level].present?
      query = query.where(user_games: { level: search_params[:level] })
    end

    if search_params[:mood].present?
      query = query.where(user_games: { mood: search_params[:mood] })
    end

    if search_params[:gender].present?
      query = query.where(gender: search_params[:gender])
    end

    if search_params[:age_min].present? && search_params[:age_max].present?
      query = query.where("age >= ? AND age <= ?", search_params[:age_min].to_i, search_params[:age_max].to_i)
    end

    if search_params[:name].present?
      query = query.where(games: { name: search_params[:name] })
    end

    @search_results = query.reject{|user| Like.find_by(liker: current_user, liked: user)}

    current_user.build_search(search_params: search_params.to_h).save unless current_user.search
    current_user.search.update(search_params: search_params.to_h) if current_user.search
  end

  private

  def user_game_params
    params.require(:user_game).permit(:level, :mood, :game_id, :name, :gender, :age)
  end

  def search_params
    params.permit(:name, :level, :mood, :gender, :age, :age_min, :age_max)
  end
end
