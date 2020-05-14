class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[show logout]
  before_action :already_in, only: %i[new login]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'Account created successfully!'
      redirect_to @user
    else
      render 'new'
    end
  end

  def show; end

  # basic User Session methods
  def login; end

  def logincreate
    @user = User.find_by(name: params[:session][:name])
    if @user
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
