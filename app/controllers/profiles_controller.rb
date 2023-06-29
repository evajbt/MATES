class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @user_games = @profile.user_games
  end

  def edit
    @profile = User.find(params[:id])
  end

  def update
    puts params.inspect
    @profile = User.find(params[:id])
    if @profile.update(profile_params)
      # Successful
      redirect_to profile_path(@profile), notice: "User information updated successfully."
    else
      # Failed
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(:username, :age, :gender, :email, :password)
  end
end
