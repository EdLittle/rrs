class SessionsController < ApplicationController

  def create
    user = User.find_by_email params[:session][:email]
    
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "Welcome!"
      log_in user
      redirect_to root_url
    else
      flash[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  def new
    @title = "Log in"
  end

end
