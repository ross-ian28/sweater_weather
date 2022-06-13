class Api::V1::WeatherController < ApplicationController
  def index
    cords = GeocodeFacade.get_cords("location")
    weather = WeatherFacade.get_weather(cords[0].lat, cords[0].lng)
    render json: ForcastSerializer.new(weather)
  end

  def show
    UnsplashFacade.get_photo("location")
  end
end
