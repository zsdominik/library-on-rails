class BooksController < ApplicationController
  def index
    @books = Book.all
    @authors = Author.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def delete
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(book_params)
    redirect_to :controller => 'books', :action => 'index'
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book created succesfully!"
      redirect_to :controller => 'books', :action => 'index'
    else
      flash[:error] = "Error while creating book!"
      render 'new'
    end
  end

  def book_params
    params.require(:book).permit(:title, :isbn, :author_id, :image, :description)
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:success] = "Book deleted succesfully!"
    else
      flash[:error] = "Error while deleting book!"
    end

    redirect_to :controller => 'books', :action => 'index'
  end
end
