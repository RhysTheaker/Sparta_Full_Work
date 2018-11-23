require_relative '../lib/postcode.rb'

describe "Postcodes API" do

  context "Single Postcode" do

    before(:all) do
      @single_postcode_class = Postcode.new.single_postcode_service
      @response = @single_postcode_class.get_single_postcode "NW67BB"
    end

    it "should return a status of 200" do
      expect(@single_postcode_class.get_status).to eq 200
    end

    it "should return a string for the postcode" do
      expect(@single_postcode_class.get_postcode_type).to be_kind_of(String)
    end

    it "should return an integer for the quality" do
      expect(@single_postcode_class.get_quality_type).to be_kind_of(Integer)
    end

    it "should return a string for the parish" do
      expect(@single_postcode_class.get_parish_type).to be_kind_of(String)
    end

    it "should return a float for the latitude" do
      expect(@single_postcode_class.get_latitude_type).to be_kind_of(Float)
    end
  end
end
