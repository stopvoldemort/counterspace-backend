class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render json: @user
    else
      render json: false
    end
  end

  def destroy
    session[:user_id].destroy
  end

end
