class BookService
  def self.conn
    Faraday.new("https://openlibrary.org")
  end

  def self.get_photo_url(location, quantity)
    response = conn.get("/subjects/#{location}.json?limit=#{quantity}&details=true")
    JSON.parse(response.body, symbolize_names: true)
  end
end
