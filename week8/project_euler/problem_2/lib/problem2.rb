class Problem2

  attr_accessor :fib_array, :sum_array

  def initialize
    @fib_array = []
    @sum_array = []
  end

  # check if the number is even
  def divisible_by?(num)
    num % 2 == 0
  end

  def iterator(num)
    fib_num2 = 2
    fib_num1 = 1
    sum = 0
    @fib_array.push fib_num1
    while fib_num2 <= num
      # if the fibonacci number is even then sum it to the total
      if divisible_by?(fib_num2)
        sum += fib_num2
        @sum_array.push sum
      end
      # store fib_num2 so that it can be assigned to fib_num1
      placeholder = fib_num2
      # push the next number in the fibonacci sequence to an array
      @fib_array.push fib_num2
      # calculate the next term in the fibonacci sequence
      fib_num2 = fib_num1 + fib_num2
      # fib_num1 takes the initial value of fib_num2 before the new term in the sequence is found
      fib_num1 = placeholder
    end
  end
end
