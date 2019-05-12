class PreviousRentalsController < ApplicationController
  def list
    puts "list before if"
    if session[:user_id].nil?
      flash[:alert] = "Please log in first!"
      redirect_to root_path if session[:user_id].nil?
      return
    end
    user = User.find(current_user.id)
    @books = user.book
    @magazines = user.magazine
    puts "list end"
  end

  def destroy
    puts params
    user = User.find(current_user.id)
    if user.book.delete(params[:format])
      flash[:success] = "Rental removed successfully!"
      redirect_to previous_rentals_list_path
    else
      flash[:error] = "Error"
    end
  end
end
