class UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]


  def create
    user = User.new(user_params)
    if user.save
      payload = {user_id: user.id}
      token = issue_token(payload)
      response = user.session_hash
      render json: { jwt: token, response: response}
    else
      render json: { error: "There was an error with your account."}
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio, :pic_url)
  end

end
