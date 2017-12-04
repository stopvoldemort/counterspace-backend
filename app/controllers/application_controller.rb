class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorized

  def issue_token(payload)
    JWT.encode(payload, "stopvoldemort")
  end

  def current_user
    authenticate_or_request_with_http_token do |jwt_token, options|
      begin
        decoded_token = JWT.decode(jwt_token, "stopvoldemort")

      rescue JWT::DecodeError
        return nil
      end

      if decoded_token[0]["user_id"]
        @current_user ||= User.find(decoded_token[0]["user_id"])
      else
      end
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: {message: "Not welcome" }, status: 401 unless logged_in?
  end


  def hashify(array)
    new_hash = {}
    array.each do |e|
      new_hash[e.id] = e
    end
    return new_hash
  end

end
