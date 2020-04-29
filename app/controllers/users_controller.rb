class UsersController < ApplicationController
  def new
  end

  def show
  end

  def login
    @user = User.find_by(name: params[:name])
  end

end
