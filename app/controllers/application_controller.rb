class ApplicationController < ActionController::Base
  protect_from_forgery
  enable_authorization

  helper_method :current_user

  def current_user
    session[:user]
  end
end
