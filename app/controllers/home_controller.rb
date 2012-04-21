class HomeController < ApplicationController
  def index
  end

  def search
    user = User.find_by_username(params[:username])
    session[:user] = user
    redirect_to :action => 'index'
  end
end
