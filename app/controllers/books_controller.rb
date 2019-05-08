class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def delete
  end

  def list
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def book_params
    params.require(:book).permit(:title, :isbn)
  end
end
