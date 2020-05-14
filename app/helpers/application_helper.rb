module ApplicationHelper
  def logged_in?
    !current_user.nil?
  end

  def current_user
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please login or signup to have access'
      redirect_to root_path
    end
  end

  def already_in
    if logged_in?
      redirect_to current_user
    end
  end
end
