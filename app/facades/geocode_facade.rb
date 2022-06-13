class GeocodeFacade
  def self.get_cords(location)
    GeocodeService.get_location_cords(location).map do |data|
      Location.new(data[:locations][0][:latLng])
    end
  end
end
