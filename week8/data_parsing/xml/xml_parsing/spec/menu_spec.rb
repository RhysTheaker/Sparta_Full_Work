require_relative '../lib/menu.rb'

describe "Guiseppe's Menu" do

  before(:all) do
    @menu = Menu.new 'xml/menu.xml'
  end

  it "no price should be more than £10" do
    @menu.get_food_prices.each do |price|
      expect(price.text.split('£').last.to_f).to be < 10.00
      # puts price.text.split('£').last.to_f
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @menu.get_food.each do |item|
      if item.search('name')[0].content == "Full Breakfast"
        expect(item.search('calories')[0].content.to_i).to eq 1200
      else
        expect(item.search('calories')[0].content.to_i).to be < 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    @menu.get_description do |desc|
      puts desc
    end
  end

end
