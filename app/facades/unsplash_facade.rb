class UnsplashFacade
  def self.get_photo(location)
    UnsplashService.get_photo_url(location).map do |data|
      Photo.new(data[:urls][:regular])
    end
  end
end
