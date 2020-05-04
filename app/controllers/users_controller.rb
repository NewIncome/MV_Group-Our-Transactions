class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
  end

  def show
  end
  
  # basic User Session methods
  def login; end

  def logincreate
    @user = User.find_by(name: params[:name])
    if @user
      session[:user_id] = @user.id
      flash[:success] = "#{@user.name} you are logged in!"
      redirect_to html: 'Logged in' # @user
    else
      flash.now[:danger] = "Please sign up first"
      render html: "User doesn't exist"
    end
  end

  def logout
    session.delete(:user_id)
  end
end
