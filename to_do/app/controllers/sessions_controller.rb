class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome to Task.com #{user.username}"
      redirect_to '/'
    else
      flash[:notice] = "There was something wrong with your login information"
      render 'new'
    end

  end

  def destroy
    session[:user_id] = nil if session[:user_id]
    redirect_to '/', flash[:notice] ="Logged Out, Goodbye! :)"

  end
end
