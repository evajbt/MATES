class UserGamesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @user_game = @user.user_games.build
    @games = Game.all
  end

  def create
    @user = User.find(params[:user_id])
    @user_game = @user.user_games.build(user_game_params)
    if @user_game.save
      redirect_to user_path(@user), notice: "User game added successfully."
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
      redirect_to user_path(@user_game.user), notice: "User game information updated successfully."
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @user_game = @user.user_games.find(params[:id])
    @user_game.destroy
    redirect_to user_path(@user)
  end

  private

  def user_game_params
    params.require(:user_game).permit(:level, :mood, :game_id)
  end
end
