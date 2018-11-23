require_relative '../lib/open_weather.rb'

describe "Open weather API" do

  before(:all) do
    @openweather = OpenWeather.new.single_city_service "Penistone"
  end

  context "getting all the information about the coordinates of Penistone" do

    it "should return a hash with 2 key-value pairs" do
      expect(@openweather.hash_length?("coord")).to eq(2)
    end

    it "should return a float for the longitudinal coordinate" do
      expect(@openweather.get_coord("lon")).to be_kind_of(Float)
    end

    it "should return a float for the latitudinal coordinate" do
      expect(@openweather.get_coord("lat")).to be_kind_of(Float)
    end


  end

  context "getting the core information of the weather" do

    it "should return a hash for the coordinate information storage type" do
      expect(@openweather.info_storage_type("coord")).to be_kind_of(Hash)
    end

    it "should return a string for the main attribute of weather" do
      expect(@openweather.weather_core_att_type?("main")).to be_kind_of(String)
    end

    it "should return a string for the description attribute of weather" do
      expect(@openweather.weather_core_att_type?("description")).to be_kind_of(String)
    end

    it "should return a string for the icon attribute of weather" do
      expect(@openweather.weather_core_att_type?("icon")).to be_kind_of(String)
    end

    it "should return an integer for the id attribute of weather" do
      expect(@openweather.weather_core_att_type?("id")).to be_kind_of(Integer)
    end

    it "should return an array for the weather information storage type" do
      expect(@openweather.info_storage_type("weather")).to be_kind_of(Array)
    end
  end

end
