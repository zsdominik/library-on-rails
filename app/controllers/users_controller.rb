class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Registration succeed!"
      redirect_to login_path
    else
      flash[:error] = "Registration error!"
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:success] = "User deleted succesfully!"
    else
      flash[:error] = "Error while deleting book!"
    end

    redirect_to :controller => 'users', :action => 'index'
  end
end
