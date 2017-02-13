class BooksController < ApplicationController


def index
  @books = Book.all
  respond_to do |format|
    format.html
    format.json
    books = Book.generate_csv(@books)
    render :plain => books
  end
  format.json do |books|
      render :json => @books
    end
  end

end
