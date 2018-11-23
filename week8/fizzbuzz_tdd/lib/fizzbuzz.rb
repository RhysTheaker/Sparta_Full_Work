class Fizzbuzz

  attr_accessor :array

  def initialize
    @array = []
  end

  def divisible_by?(num, divider)
    num % divider == 0
  end

  def iterator(start_num, end_num)
    for i in (start_num..end_num) do
      if divisible_by?(i, 3) && divisible_by?(i, 5)
        @array.push 'FizzBuzz'
      elsif divisible_by?(i, 3)
        @array.push 'Fizz'
      elsif divisible_by?(i, 5)
        @array.push 'Buzz'
      else
        @array.push i
      end
    end
  end

end
