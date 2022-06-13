class UnsplashService
  def self.conn
    Faraday.new("https://api.unsplash.com")
  end

  def self.api_key
    ENV["unsplash_api_key"]
  end

  def self.get_photo_url(location)
    response = conn.get("/search/photos?query=#{location}&client_id=#{api_key}")
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end
