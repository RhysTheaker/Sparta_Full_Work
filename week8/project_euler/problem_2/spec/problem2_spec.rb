require_relative '../lib/problem2'

describe 'problem2' do
  before(:all) do
    @problem = Problem2.new
  end

  it "should only add numbers which are divisible by 2" do
    expect(@problem).to respond_to :divisible_by?
    expect(@problem.divisible_by?(6)).to be true
  end

  it "should generate the fibonacci sequence" do
    @problem.iterator(1000)
    expect(@problem.fib_array).to be_kind_of Array
    expect(@problem.fib_array[0]).to be_kind_of Integer
    expect(@problem.fib_array.length).to be_kind_of Integer
    expect(@problem.fib_array[4] + @problem.fib_array[5]).to eq(@problem.fib_array[6])
  end

  it "should be summing together integers" do
    @problem.iterator(1000)
    expect(@problem.sum_array).to be_kind_of Array
    expect(@problem.sum_array[0]).to be_kind_of Integer
    expect(@problem.sum_array.length).to be_kind_of Integer
  endl

end
