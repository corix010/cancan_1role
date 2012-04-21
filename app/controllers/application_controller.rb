class ApplicationController < ActionController::Base
  protect_from_forgery
  enable_authorization

  def current_user
    User.all[0]
  end
end
