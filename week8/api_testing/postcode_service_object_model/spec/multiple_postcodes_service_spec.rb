require_relative '../lib/postcode.rb'

describe "Postcodes API" do

  context "Multiple Postcodes" do

    before(:all) do
      @multiple_postcodes_class = Postcode.new.multiple_postcodes_service
      @response = @multiple_postcodes_class.get_multiple_postcodes ["S366BQ", "B261EB"]
    end

    it "should return a status of 200" do
      expect(@multiple_postcodes_class.get_multi_status).to eq 200
    end

    it "should return 2 postcodes" do
      expect(@multiple_postcodes_class.get_postcode_num).to eq 2
    end

  end
end
