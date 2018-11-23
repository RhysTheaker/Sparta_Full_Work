require_relative '../lib/exchange_rates.rb'

describe 'Exchange Rates' do

  before(:all) do
    @rates = ExchangeRates.new 'json/exchange_rates.json'
  end

  it "should return a hash" do
    expect(@rates.exchange_rates).to be_kind_of(Hash)
  end

  it "should contain the base as EUR" do
    expect(@rates.get_base).to eq "EUR"
  end

  it "should have all its rates as floats" do
    # @rates.exchange_rates["rates"].each_value do |value|
    #   expect(value).to be_kind_of(Float)
    # end
    expect(@rates.check_float).to be true
  end
end
