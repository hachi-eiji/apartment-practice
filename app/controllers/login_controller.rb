class LoginController < ApplicationController
  def new
    user = User.find_by(login_id: params[:login_id])
    if user && user.authenticate(params[:password])
      logger.info 'login was successful'
      session[:user] = user
      render json: user
    else
      render json: {message: 'login failed'}
    end
  end
end
