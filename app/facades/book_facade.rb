class BookFacade
  def self.get_books(location, quantity)
    map = GeocodeService.get_location_cords(location)
    cords = map[0][:locations][0][:latLng]

    weather = WeatherService.get_location_weather(cords[:lat], cords[:lng])

    data = BookService.get_book_data(location, quantity)

    attr = {
      data: {
        attributes: {
          destination: data[:name],
          forecast: {
            summary: weather[:current][:weather][0][:description],
            temperature: weather[:current][:temp]
          },
          total_books_found: data[:work_count],
          books: [
            {
              isbn: [
                data[:works][1][:availability][:isbn]
              ],
              title: data[:works][0][:title]
            }
          ]
        }
      }
    }

    Book.new(attr)
  end
end
