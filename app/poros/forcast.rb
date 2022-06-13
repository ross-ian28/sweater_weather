class Forcast
  attr_reader :id, :datetime, :sunrise, :sunset, :temp, :feels_like, :humidity,
    :uvi, :visibility, :description, :icon, :daily_date, :daily_sunrise, :daily_sunset,
    :daily_max_temp, :daily_min_temp, :daily_description, :daily_icon, :hourly_time,
    :hourly_temp, :hourly_description, :hourly_icon

  def initialize(data)
    @datetime = Time.at(data[:current_weather][:datetime]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @sunrise = Time.at(data[:current_weather][:sunrise]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @sunset = Time.at(data[:current_weather][:sunset]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @temp = data[:current_weather][:temp]
    @feels_like = data[:current_weather][:feels_like]
    @humidity = data[:current_weather][:humidity]
    @uvi = data[:current_weather][:uvi]
    @visibility = data[:current_weather][:visibility]
    @description = data[:current_weather][:description]
    @icon = data[:current_weather][:icon]

    @daily_date = Time.at(data[:daily_weather][0][:date]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @daily_sunrise = Time.at(data[:daily_weather][0][:sunrise]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @daily_sunset = Time.at(data[:daily_weather][0][:sunset]).utc.strftime("%Y-%m-%d %H:%M:%S")
    @daily_max_temp = data[:daily_weather][0][:max_temp]
    @daily_min_temp = data[:daily_weather][0][:min_temp]
    @daily_description = data[:daily_weather][0][:description]
    @daily_icon = data[:daily_weather][0][:icon]

    @hourly_time = Time.at(data[:hourly_weather][0][:time]).utc.strftime("%H:%M:%S")
    @hourly_temp = data[:hourly_weather][0][:temp]
    @hourly_description = data[:hourly_weather][0][:description]
    @hourly_icon = data[:hourly_weather][0][:icon]
  end
end
