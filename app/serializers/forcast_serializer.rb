class ForcastSerializer
  include JSONAPI::Serializer
  attributes :id, :datetime, :sunrise, :sunset, :temp, :feels_like, :humidity,
    :uvi, :visibility, :description, :icon, :daily_date, :daily_sunrise, :daily_sunset,
    :daily_max_temp, :daily_min_temp, :daily_description, :daily_icon, :hourly_time,
    :hourly_temp, :hourly_description, :hourly_icon
end
