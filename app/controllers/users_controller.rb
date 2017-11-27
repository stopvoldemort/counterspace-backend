class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json: @user
    else
      render json: false
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio)
  end

end
