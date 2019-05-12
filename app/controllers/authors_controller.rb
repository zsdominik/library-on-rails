class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update_attributes(author_params)
    redirect_to :controller => 'authors', :action => 'index'
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:success] = "Author created succesfully!"
      redirect_to :controller => 'authors', :action => 'index'
    else
      flash[:error] = "Error while creating author!"
      render 'new'
    end
  end

  def destroy
    @author = Author.find(params[:id])
    if @author.destroy
      flash[:success] = "Author deleted succesfully!"
    else
      flash[:error] = "Error while deleting author!"
    end

    redirect_to :controller => 'authors', :action => 'index'
  end

  def author_params
    params.require(:author).permit(:name)
  end
end
