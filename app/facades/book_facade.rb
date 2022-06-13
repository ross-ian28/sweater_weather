class BookFacade
  def self.get_books(location, quantity)
    map = GeocodeService.get_location_cords(location)
    cords = map[0][:locations][0][:latLng]

    weather = WeatherService.get_location_weather(cords[:lat], cords[:lng])

    BookService.get_location_cords(location).map do |data|
      binding.pry

      attr = {
        data: {
          attributes: {
            destination: data[:name],
            forcast: {
              summary:
            },
            total_books_found: data[:work_count]
            books: [
              {
                isbn: [
                  data[works]
                ]
              }
            ]
          }
        }
      }
      Book.new(attr)
    end
  end
end
