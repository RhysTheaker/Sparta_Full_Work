require_relative 'services/five_day_forecast_service.rb'

class OpenFiveDayWeather

  def five_day_city_service city
    FiveDayCityService.new city
  end

end

# sheffield = OpenFiveDayWeather.new.five_day_city_service "Sheffield"
#
# puts sheffield.city
