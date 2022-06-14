class UsersController < ApplicationController
    # REGISTER
    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({user_id: @user.id})
      else
        render json: {error: "Invalid username or password"}
      end
    end
  
    # LOGGING IN
    def login
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        @token = encode_token({user_id: @user.id})
      else
        render json: {error: "Invalid username or password"}
      end
    end
    def auto_login
    end
    private
  
    def user_params
      params.permit(:username, :password, :age)
    end
end
