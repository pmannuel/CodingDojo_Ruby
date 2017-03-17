class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    redirect_to '/sessions/new' unless session[:user_id].is_a? Integer
    flash[:errors] = "Please Log In"
  end

  helper_method :current_user
end
