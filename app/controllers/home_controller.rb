class HomeController < ApplicationController
  def index
    user = User.find_by_username(params[:username])
    session[:user] = user
  end
end
