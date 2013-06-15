class UsersController < ApplicationController

  def login
    
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new params[:user]
  end
end
