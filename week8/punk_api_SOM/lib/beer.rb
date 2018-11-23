require_relative 'services/beer_index.rb'

class Beer

  def beer_index_service
    BeerIndexService.new
  end

end

# beer1 = Beer.new
# puts beer1.beer_index_service.get_single_beer(1)
