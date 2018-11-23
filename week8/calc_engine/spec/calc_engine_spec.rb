require_relative '../lib/calc_engine.rb'

describe "basic calc_engine methods work" do

  before(:all) do
    @calc = CalcEngine.new
  end

  it "should add together two numbers" do
    # calc = CalcEngine.new
    expect(@calc.add(2,2)).to eq 4
  end

  it "should subtract two numbers" do
    # calc = CalcEngine.new
    expect(@calc.subtract(4,2)).to eq 2
  end

  it "should multiply two numbers" do
    # calc = CalcEngine.new
    expect(@calc.multiply(2,2)).to eq 4
  end

  it "should divide two numbers" do
    # calc = CalcEngine.new
    expect(@calc.divide(7,2)).to eq 3.5
  end

  it "should square root a number" do
    expect(@calc.sqrt(4)).to eq 2
  end

  it "should raise a number to the power of another number" do
    expect(@calc.power(2,2)).to eq 4
  end

end
