require 'json'
require 'httparty'

class FiveDayCityService

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/forecast?q='
  attr_accessor :city

  def initialize city
    @api_key = '7a7c755a8b87d2ea9f210414bc83c5fd'
    @city = JSON.parse(self.class.get("#{city}&appid=#{@api_key}").body)
  end

  def get_basic_info attribute
    return @city[attribute]
  end

  def get_data_storage_type_one
    return @city["list"]
  end

  def get_list_att
    @city["list"].each do |hash|
      unless hash["dt"].is_a?(Integer)
        return false
      end
    end
    return true
  end

  def get_list_att1_att2 attribute1, attribute2, type
    @city["list"].each do |hash|
      unless hash[attribute1][attribute2].is_a?(type)
        return false
      end
    end
    return true
  end

end
