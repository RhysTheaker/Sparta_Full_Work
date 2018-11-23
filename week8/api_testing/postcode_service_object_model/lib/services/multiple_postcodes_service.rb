require 'httparty'
require 'json'

class MultiplePostcodesService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :multiple_postcodes

  def get_multiple_postcodes postcode_array
    @multiple_postcodes = JSON.parse(self.class.post("/postcodes", body: {"postcodes": postcode_array}).body)
  end

  # ============ START MULTIPLE POSTCODE METHODS ===========

  def get_multi_status
    @multiple_postcodes["status"]
  end

  def get_postcode_num
    @multiple_postcodes["status"]
  end

  # ============ END MULTIPLE POSTCODE METHODS ===========

end
