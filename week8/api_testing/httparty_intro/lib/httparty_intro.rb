require 'httparty'
require 'json'

# response = HTTParty.get('http://api.postcodes.io/random/postcodes')
#
# json = JSON.parse(response.body)
#
# puts json["result"]["postcode"]

class HTTPartyIntro
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :random_postcode, :single_postcode, :multiple_postcodes

  def get_random_postcode
    @random_postcode = JSON.parse(self.class.get('/random/postcodes').body)
  end

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

  def get_multiple_postcodes postcode_array
    @multiple_postcodes = JSON.parse(self.class.post("/postcodes", body: {"postcodes": postcode_array}).body)
  end

  # ============ START MULTIPLE POSTCODE METHODS ===========

  def get_multi_status
    @multiple_postcodes["status"]
  end

  # ============ END MULTIPLE POSTCODE METHODS ===========

end

# postcode1 = HTTPartyIntro.new
# postcode1.get_random_postcode
# puts postcode1.random_postcode
# postcode1.get_single_postcode "NW67BB"
# puts postcode1.single_postcode
# postcode1.get_multiple_postcodes ["S366BQ", "B261EB"]
# puts postcode1.multiple_postcodes
