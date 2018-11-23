require_relative '../lib/beer.rb'

describe 'beer' do

  before(:all) do
    @beer_index = Beer.new.beer_index_service
  end

  context "getting information on what type of data storage is used to contain all the beer information" do

    it "should return an array" do
      expect(@beer_index.get_beer(1)).to be_kind_of(Array)
    end
  end

  context "getting the core information on the beer" do

    it "should return an integer type for the following core beet attributes: id, ibu, target_fg, target_og, ebc, srm and attenuation level" do
      beer_core_att_int = ["id", "ibu", "target_fg", "target_og", "ebc", "srm", "attenuation_level"]
      beer_core_att_int.each do |att|
        expect(@beer_index.beer_att_int?(att)).to be true
      end
    end

    it "should return a float type for the following core beer attributes: abv and ph" do
      beer_core_att_float = ["abv", "ph"]
      beer_core_att_float.each do |att|
        expect(@beer_index.beer_att_float?(att)).to be true
      end
    end
  end

  context "getting information related to the production process" do

    it "should return an integer for the temperature" do
      expect(@beer_index.beer_temp?).to be true
    end

    it "should have 3 techniques for each method" do
      expect(@beer_index.beer_method_num?).to be true
    end

    it "should be an integer for the duration of the mash temp method" do
      expect(@beer_index.beer_mash_temp_duration?).to be true
    end

  end

  context "getting information on the ingredients of the beer" do

    it "should return 3 ingredients for the beer" do
      expect(@beer_index.beer_ingredients_num?).to be true
    end

    it "should return a string for the name of each malt" do
      expect(@beer_index.beer_malt_name?).to be true
    end

    it "should return a float for the value of each malt" do
      expect(@beer_index.beer_malt_amount_value?).to be true
    end

    # it "should return two attributes for the amount of each respective hop" do
    #   expect(@beer_index.beer_hop_amount_att_num?).to be true
    # end

  end




end
