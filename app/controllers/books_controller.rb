class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book=Book.new
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:success] = "Book was entered successfully!"
      redirect_to books_path(@book)
    else
      render 'new'
    end
  end


  private
    def book_params
      params.require(:book).permit(:book_name, :author, :description)
    end
end


