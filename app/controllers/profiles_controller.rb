class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @user_games = @profile.user_games
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    @profile = User.find(params[:id])
    if @profile.update(profile_params)
      response.headers['Location'] = url_for(@profile.photo)
      redirect_to profile_path(@profile), notice: "User information updated successfully."
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(:username, :age, :gender, :email, :password, :photo)
  end
end
