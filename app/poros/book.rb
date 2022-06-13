class Book
  attr_reader :id, :destination, :forecast_summary, :forcast_temp, :total_books_found,
    :book_isbn, :book_title

  def initialize(data)
    attr = data[:data][:attributes]

    @destination = attr[:destination]
    @forecast_summary = attr[:forecast][:summary]
    @forcast_temp = attr[:forecast][:temperature]
    @total_books_found = attr[:total_books_found]
    @book_isbn = attr[:books][0][:isbn]
    @book_title = attr[:books][0][:title]
  end
end
