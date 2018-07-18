class UsersController < ApplicationController


  def show
    @user = User.find_by_id(params[:id])
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Hi! #{@user.username} Welcome to Task.com "
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:notice] = "There was something wrong adding you this time."
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
