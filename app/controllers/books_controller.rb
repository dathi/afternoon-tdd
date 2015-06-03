class BooksController < ApplicationController
  def new
  	@book = Book.new
  end
  def create
  	@book = Book.create(book_param)
  	redirect_to books_path if @book
  end
  def index
  end

  private
  def book_param
  	params.require(:book).permit(:name, :description)
  end
end