require 'nokogiri'

class Menu

  attr_accessor :menu

  def initialize xml_file
    @menu = Nokogiri::XML(File.open(xml_file))
  end

  def get_food_prices
    @menu.search('price')
  end

  def get_calories
    @menu.search('calories')
  end

  def get_xpath_names
    @menu.xpath('//name')
  end

  def get_food
    @menu.search('food')
  end

  def get_description
    @menu.search('description')
  end

end

# bobs_burgers = Menu.new 'xml/menu.xml'

# puts bobs_burgers.get_food_names.class
# puts bobs_burgers.get_food_names.inner_html
# puts bobs_burgers.get_food_names.last.content
# puts bobs_burgers.get_food_names

# puts bobs_burgers.get_xpath_names
