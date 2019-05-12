class PublishersController < ApplicationController
  def index
    @publishers = Publisher.all
  end

  def show
    @publisher = Publisher.find(params[:id])
  end

  def new
    @publisher = Publisher.new
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.update_attributes(publisher_params)
    redirect_to :controller => 'publishers', :action => 'index'
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:success] = "Publisher created succesfully!"
      redirect_to :controller => 'publishers', :action => 'index'
    else
      flash[:error] = "Error while creating publisher!"
      render 'new'
    end
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    if @publisher.destroy
      flash[:success] = "Publisher deleted succesfully!"
    else
      flash[:error] = "Error while deleting publisher!"
    end

    redirect_to :controller => 'publishers', :action => 'index'
  end

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
