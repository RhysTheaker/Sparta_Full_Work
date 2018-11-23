require_relative '../lib/problem1'

describe 'problem1' do
  before(:all) do
    @problem = Problem1.new
  end

  it "should be cleanly divisible by 3" do
    expect(@problem).to respond_to :divisible_by?
    expect(@problem.divisible_by?(6,3)).to be true
  end

  it "should be cleanly divisible by 5" do
    expect(@problem).to respond_to :divisible_by?
    expect(@problem.divisible_by?(10,5)).to be true
  endd
end
