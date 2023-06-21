class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_games = @user.user_games
  end

  def update
    puts params.inspect
    @user = User.find(params[:id])
    if @user.update(user_params)
      # Successful
      redirect_to user_path(@user), notice: "User information updated successfully."
    else
      # Failed
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :birthdate, :gender, :email, :password)
  end
end
