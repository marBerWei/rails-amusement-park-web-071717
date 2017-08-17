class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_admin

  def current_user
    @user ||= User.find_by(id: session[:user_id])
  end

  def user_admin
    if current_user.admin == true
      true
    else
      false
    end
  end


end

#done