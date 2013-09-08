class UsersController < ApplicationController

  def login
    
  end

  def signup
    @title = "Sign up!"
    @user = User.new
  end

  def edit
    @user = User.find params[:id]  
  end

  def create
    @user = User.new params[:user]

    if @user.save
      flash[:success] = "Welcome to RRS!"
      redirect_to action: :edit, id: @user.id
    else
      flash[:error] = "Sign up unsuccessful"
      render :action => :signup
    end
  end

  # Used for checking if the user inputted a username that has already been taken
  def username_taken
    username = params[:user][:username].downcase
    render :json => User.find_by_username(username).nil?
  end

  # Used for checking if the user inputted an email that has already been taken
  def email_taken
    email = params[:user][:email].downcase
    render :json => User.find_by_email(email).nil?
  end
end
