class BooksSerializer
  include JSONAPI::Serializer
  attributes :id, :destination, :forecast_summary, :forcast_temp, :total_books_found,
    :book_isbn, :book_title
end
