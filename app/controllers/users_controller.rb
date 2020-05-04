class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Account created successfully!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
  end
  
  # basic User Session methods
  def login; end

  def logincreate
    @user = User.find_by(name: params[:session][:name])
    unless @user.nil?
      session[:user_id] = @user.id
      flash[:success] = "#{@user.name} you are logged in!"
      redirect_to @user
    else
      flash.now[:danger] = "User doesn't exist, please sign up"
      render 'login'
    end
  end

  def logout
    session.delete(:user_id)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
