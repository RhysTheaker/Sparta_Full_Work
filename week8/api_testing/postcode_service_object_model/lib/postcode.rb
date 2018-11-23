require_relative 'services/single_postcode_service.rb'
require_relative 'services/multiple_postcodes_service.rb'
class Postcode

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcodes_service
    MultiplePostcodesService.new
  end

end

# postcode = Postcode.new
# puts postcode.single_postcode_service.get_single_postcode("S366BQ")
# postcode = Postcode.new
# puts postcode.multiple_postcode_service.get_multiple_postcodes(["S366BQ", "B261EB"])
