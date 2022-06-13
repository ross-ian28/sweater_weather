class WeatherFacade
  def self.get_weather(lat, long)
    data = WeatherService.get_location_weather(lat, long)

    current = data[:current]
    daily = data[:daily][0]
    hourly = data[:hourly][0]

    attr = {
      current_weather: {
        datetime: current[:dt],
        sunrise: current[:sunrise],
        sunset: current[:sunset],
        temp: current[:temp],
        feels_like: current[:feels_like],
        humidity: current[:humidity],
        uvi: current[:uvi],
        visibility: current[:visibility],
        description: current[:weather][0][:description],
        icon: current[:weather][0][:icon]
      },
      daily_weather: [
        {
          date: daily[:dt],
          sunrise: daily[:sunrise],
          sunset: daily[:sunset],
          max_temp: daily[:temp][:max],
          min_temp: daily[:temp][:min],
          description: daily[:weather][0][:description],
          icon: daily[:weather][0][:icon]
        }
      ],
      hourly_weather: [
        {
          time: hourly[:dt],
          temp: hourly[:temp],
          description: hourly[:weather][0][:description],
          icon: hourly[:weather][0][:icon]
        }
      ]
    }

    Forcast.new(attr)
  end
end
