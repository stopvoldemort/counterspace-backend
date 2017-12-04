class UsersController < ApplicationController

  skip_before_action :authorized, only: [:create]


  def create
    user = User.new(user_params)
    if user.save
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio, :pic_url)
  end

end
