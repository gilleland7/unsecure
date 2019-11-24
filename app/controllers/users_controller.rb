class UsersController < ApplicationController
  def index

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/dashboard'
    else
      flash[:register_errors] = user.errors.full_messages
      redirect_to '/'
    end
  end

  def search
    if params[:q] == "John"
       @users = User.where("username LIKE ?", "%" + params[:q] + "%")
       # @users = User.where("SELECT ? FROM users WHERE password = ? AND username = ?","%" + params[:q] + "%", "%" + params[:login[password]] + "%", "%" + params[:login[username]] + "%")
    end
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname, :dob, :ssn, :username, :password, :password_confirmation)
    end


end
