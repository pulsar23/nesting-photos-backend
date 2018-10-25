class ApplicationController < ActionController::API
  before_action :check_authentication

  def auth_header
    request.headers['Authorization']
  end

  def encode_token(payload)
    JWT.encode(payload, 'app_wide_secret_for_every_user')
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'app_wide_secret_for_every_user')[0]
      rescue JWT::DecodeError
        nil
      end #begin/rescue
    end #if
  end #decoded_token

  def current_user
    if decoded_token
      user_id = decoded_token["user_id"]
      User.find(user_id)
    end
  end #current_user

  def check_authentication
    if (!current_user)
      render json: {error: 'Please log in'}
    end
  end #check_authentication

end
