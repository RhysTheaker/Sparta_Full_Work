require 'httparty'
require 'json'

class BeerIndexService
  include HTTParty

  base_uri 'https://api.punkapi.com/v2/beers'

  attr_accessor :beer

  def get_beer id
    @beer = JSON.parse(self.class.get("/#{id}").body)
  end

  def beer_att_int?(attribute)
    get_beer(1).each do |value|
      unless value[attribute].is_a?(Integer)
        return false
      end
    end
    return true
  end

  def beer_att_float?(attribute)
    get_beer(1).each do |value|
      unless value[attribute].is_a?(Float)
        return false
      end
    end
    return true
  end

  def beer_temp?
    get_beer(1).each do |value|
      value["method"]["mash_temp"].each do |val|
        unless val["temp"]["value"].is_a?(Integer)
          return false
        end
      end
    end
    return true
  end

  def beer_method_num?
    get_beer(1).each do |value|
      unless value["method"].length == 3
        return false
      end
    end
    return true
  end

  def beer_ingredients_num?
    get_beer(1).each do |value|
      unless value["ingredients"].length == 3
        return false
      end
    end
    return true
  end

  def beer_malt_name?
    get_beer(1).each do |value|
      value["ingredients"]["malt"].each do |malt_info|
        unless malt_info["name"].is_a?(String)
          return false
        end
      end
    end
    return true
  end

  def beer_malt_amount_value?
    get_beer(1).each do |value|
      value["ingredients"]["malt"].each do |malt_info|
        unless malt_info["amount"]["value"].is_a?(Float)
          return false
        end
      end
    end
    return true
  end

  def beer_mash_temp_duration?
    get_beer(1).each do |value|
      value["method"]["mash_temp"].each do |val|
        unless val["duration"].is_a?(Integer)
          return false
        end
      end
    end
    return true
  end

  # def beer_hop_amount_att_num?
  #   get_beer(1).each do |value|
  #     value["ingredients"]["hops"].each do |val|

end
