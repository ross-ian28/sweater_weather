class Api::V1::BookController < ApplicationController
  def show
    book = BookFacade.get_books(params["location"], params["quantity"])
    render json: BookSerializer.new(book)
  end
end
