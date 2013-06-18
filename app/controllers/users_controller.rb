class UsersController < ApplicationController

  def login
    
  end

  def signup
    @user = User.new
  end

  def create
    @user = User.new params[:user]

    if @user.save
      flash[:success] = "Sign up successful."
      redirect_to :action => :edit
    else
      flash[:error] = "Sign up unsuccessful"
      render :action => :signup

    end
  end
end
