class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:create, :show]

  def show
    if current_user
      response = current_user.session_hash
      render json: response
    else
      render json: { error: "Please log in."}
    end
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      response = user.session_hash
      render json: { jwt: token, response: response}
    else
      render json: { error: "There was an error with your account."}
    end
  end

end
