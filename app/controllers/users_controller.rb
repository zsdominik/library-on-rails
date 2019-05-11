class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Registration succeed!"
=begin
      redirect_to :controller => 'users', :action => 'login'
=end
    else
      flash[:error] = "Registration error!"
      render 'new'
    end
  end

  def login

  end

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end

  def edit
  end

  def delete
  end

  def list
  end
end
