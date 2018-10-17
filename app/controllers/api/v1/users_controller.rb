class Api::V1::UsersController < ApplicationController
  skip_before_action :check_authentication, only: [:create]

  def index

  end

  def show
    user = User.find(params[:id])
  end

  def new
    user = User.new
  end

  def create

    user = User.new(user_params)
    # user.username = params[:username]
    # user.password = params[:password]
    # user.email = params[:email]
#byebug

    if (user.save)
      render json: {
        user: user,
        token: encode_token({user_id: user.id})
      }
    else
        render json: {
          errors: '@user.errors.full_messages'
        }, status: unprocessable_entity
    end #end if
  end #end create

  def profile
    render json: current_user
  end

  def edit
  end

  private
    def user_params
      params.permit(:username, :email, :password)
      #params.require(:user).permit(:username, :email, :password)
      #params.require(:user).permit(:username,:email,:email_confirmation,:password,:password_confirmation)
    end
end
