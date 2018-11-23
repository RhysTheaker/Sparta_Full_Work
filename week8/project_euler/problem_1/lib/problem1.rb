class Problem1

  def divisible_by?(num, divider)
    num % divider == 0
  end

  def iterator(start_num, end_num)
    sum = 0;
    for i in (start_num...end_num) do
      if divisible_by?(i, 3) || divisible_by?(i, 5)
        sum += i
      end
    end
    puts sum
  end
end

result = Problem1.new
result.iterator(1, 1000)
