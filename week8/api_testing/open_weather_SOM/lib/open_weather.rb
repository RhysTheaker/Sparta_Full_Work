require_relative 'services/single_city_service.rb'


class OpenWeather

  def single_city_service city
    SingleCityService.new city
  end

end

# penistone = OpenWeather.new.single_city_service "Penistone"
# puts penistone.city
