require_relative '../lib/five_day_forecast.rb'

describe "Five Day forecast API" do

  before(:all) do
    @fivedayforecast = OpenFiveDayWeather.new.five_day_city_service "Sheffield"
  end

  context "getting all the group data types, e.g. hash or array" do

    it "should return an array for the list" do
      expect(@fivedayforecast.get_data_storage_type_one).to be_kind_of(Array)
    end

  end

  context "getting all the most basic information on the weather" do

    it "should return a string for the cod attribute" do
      expect(@fivedayforecast.get_basic_info("cod")).to be_kind_of(String)
    end

    it "should return a float for the message attribute" do
      expect(@fivedayforecast.get_basic_info("message")).to be_kind_of(Float)
    end

    it "should return an integer for the cnt attribute" do
      expect(@fivedayforecast.get_basic_info("cnt")).to be_kind_of(Integer)
    end

  end

  context "getting the basic information of the forecast" do

    it "should return an integer for the dt attribute" do
      expect(@fivedayforecast.get_list_att).to be true
    end

    it "should return a float for the temp attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "temp", Float)).to be true
    end

    it "should return a float for the temp_min attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "temp_min", Float)).to be true
    end

    it "should return a float for the temp_max attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "temp_max", Float)).to be true
    end

    it "should return a float for the pressure attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "pressure", Float)).to be true
    end

    it "should return a float for the sea level attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "sea_level", Float)).to be true
    end

    it "should return a float for the ground level attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "grnd_level", Float)).to be true
    end

    it "should return a float for the humidity attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "humidity", Integer)).to be true
    end

    it "should return a float for the temp_kf attribute" do
      expect(@fivedayforecast.get_list_att1_att2("main", "temp_min", Float)).to be true
    end

  end



end
