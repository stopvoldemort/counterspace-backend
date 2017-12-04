class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:create, :show]

  def show
    if current_user
      user = current_user
      response = {}
      response[:user] = user
      response[:reservations] = user.reservations
      response[:kitchens] = user.kitchens
      response[:kitchen_reviews] = user.reviewed_kitchens
      response[:kitchen_pictures] = user.kitchens.map {|k| k.kitchen_pictures[0]}
      response[:reviews_of_users_kitchens] = user.kitchens.map {|k| k.reviews}.flatten
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
      current_user = {}
      current_user[:user] = user
      current_user[:reservations] = user.reservations
      current_user[:kitchens] = user.kitchens
      current_user[:kitchen_reviews] = user.reviewed_kitchens
      current_user[:kitchen_pictures] = user.kitchens.map {|k| k.kitchen_pictures[0]}
      current_user[:reviews_of_users_kitchens] = user.kitchens.map {|k| k.reviews}.flatten
      render json: { jwt: token, current_user: current_user}
    else
      render json: { error: "There was an error with your account."}
    end
  end

end
