class ProfilesController < ApplicationController
  def create
    user = User.find_by(username:login_params[:username])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/dashboard'
    else
      flash[:login_errors] = ['invalid entry']
      redirect_to '/'
    end
  end

  private
    def login_params
      params.require(:login).permit(:username, :password)
    end
end
