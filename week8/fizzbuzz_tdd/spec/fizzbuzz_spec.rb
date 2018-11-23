require_relative '../lib/fizzbuzz'

describe 'Fizzbuzz' do

  before(:all) do
    @fizzbuzz = Fizzbuzz.new
  end

  it "should be cleanly divisible by 3" do
    expect(@fizzbuzz).to respond_to :divisible_by?
    expect(@fizzbuzz.divisible_by?(6,3)).to be true
  end

  it "should be cleanly divisible by 5" do
    expect(@fizzbuzz).to respond_to :divisible_by?
    expect(@fizzbuzz.divisible_by?(10,5)).to be true
  end

  it "should generate a list of numbers to test" do
    @fizzbuzz.iterator(1, 15)
    expect(@fizzbuzz.array).to be_kind_of Array
    expect(@fizzbuzz.array[0]).to be_kind_of Integer
    expect(@fizzbuzz.array.length).to be_kind_of Integer
  end

  it "should apply fizzbuzz to a given range" do
    @fizzbuzz.iterator(1, 15)
    expect(@fizzbuzz.array[2]).to eq 'Fizz'
    expect(@fizzbuzz.array[4]).to eq 'Buzz'
    expect(@fizzbuzz.array.last).to eq 'FizzBuzz'
  end

end
