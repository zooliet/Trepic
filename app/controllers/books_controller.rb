class BooksController < ApplicationController
  def index
    @books = Book.search(params[:keyword]).filter(params[:filter])
    @genres = Genre.all
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end


  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :amazon_id, :rating)
  end
end
