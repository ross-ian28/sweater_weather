class BookService
  def self.conn
    Faraday.new("https://openlibrary.org")
  end

  def self.get_book_data(location, quantity)
    response = conn.get("/subjects/#{location}.json?limit=#{quantity}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
