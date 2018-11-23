require 'json'
require 'httparty'

class SingleCityService

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?q='
  attr_accessor :city

  def initialize city
    @api_key = '7a7c755a8b87d2ea9f210414bc83c5fd'
    @city = JSON.parse(self.class.get("#{city}&appid=#{@api_key}").body)
  end

  def get_coord attribute
    return @city["coord"][attribute]
  end

  def weather_core_att_type? attribute
    @city["weather"].each do |value|
      return value[attribute]
    end
  end

  def info_storage_type attribute
    return @city[attribute]
  end

  def hash_length? attribute
    return @city[attribute].length
  end

end
