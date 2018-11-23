require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :single_postcode

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  # ============ START SINGLE POSTCODE METHODS ===========

  def get_status
    @single_postcode["status"]
  end

  def get_postcode_type
    @single_postcode["result"]["postcode"]
  end

  def get_quality_type
    @single_postcode["result"]["quality"]
  end

  def get_parish_type
    @single_postcode["result"]["codes"]["parish"]
  end

  def get_latitude_type
    @single_postcode["result"]["latitude"]
  end

  # ============  END SINGLE POSTCODE METHODS  ===========

end
