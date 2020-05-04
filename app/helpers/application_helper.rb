module ApplicationHelper
  def logged_in?
    return true unless session[:user_id].nil?
    flash[:danger] = 'Please login or signup to have access'
    redirect_to root_path
  end

  def current_user
    @user = User.find_by(id: session[:user_id])
  end
end
