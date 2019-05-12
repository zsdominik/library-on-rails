class MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  end

  def new
    @magazine = Magazine.new
  end

  def edit
    @magazine = Magazine.find(params[:id])
  end

  def update
    @magazine = Magazine.find(params[:id])
    @magazine.update_attributes(magazine_params)
    redirect_to :controller => 'magazines', :action => 'index'
  end

  def create
    @magazine = Magazine.new(magazine_params)
    if @magazine.save
      flash[:success] = "Magazine created succesfully!"
      redirect_to :controller => 'magazines', :action => 'index'
    else
      flash[:error] = "Error while creating magazine!"
      render 'new'
    end
  end

  def destroy
    @magazine = Magazine.find(params[:id])
    if @magazine.destroy
      flash[:success] = "Magazine deleted succesfully!"
    else
      flash[:error] = "Error while deleting magazine!"
    end

    redirect_to :controller => 'magazines', :action => 'index'
  end

  def rent_magazine
    user = User.find(current_user.id)
    magazine = Magazine.find(params[:id])
    if user.magazine.include?(magazine)
      flash[:error] = "Magazine is alredy rented!"
      redirect_to :controller => 'magazines', :action => 'index'
    else
      user.magazine << magazine
      if user.save
        flash[:success] = "Magazine rented succesfully!"
        redirect_to :controller => 'previous_rentals', :action => 'list'
      else
        flash[:error] = "Magazine rental error!"
      end
    end
  end

  def magazine_params
    params.require(:magazine).permit(:name, :description, :image, :publisher_id)
  end
end
