require_relative '../lib/httparty_intro.rb'

describe "Postcodes API" do

  context "Single (& Random) Postcode" do

    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @HTTParty.get_single_postcode "NW67BB"
    end

    # =========== Single Postcode Start ===========

    it "should return a status of 200" do
      expect(@HTTParty.get_status).to eq 200
    end

    it "should return a string for the postcode" do
      expect(@HTTParty.get_postcode_type).to be_kind_of(String)
    end

    it "should return an integer for the quality" do
      expect(@HTTParty.get_quality_type).to be_kind_of(Integer)
    end

    it "should return a string for the parish" do
      expect(@HTTParty.get_parish_type).to be_kind_of(String)
    end

    it "should return a float for the latitude" do
      expect(@HTTParty.get_latitude_type).to be_kind_of(Float)
    end
  end

    # ========== Single Postcode End ==========

    # ========== Multiple Postcode Start =========

  context "Multiple Postcode" do

    before(:all) do
      @HTTParty = HTTPartyIntro.new
      @HTTParty.get_multiple_postcodes ["S366BQ", "B261EB"]
    end

    it "should return a status of 200" do
      expect(@HTTParty.get_multi_status).to eq 200
    end

  end

    # ========= Multiple Postcode End =========

end
