# return an array of reversed words
def reverse_array_of_strings words
  words.each do |word|
    word.reverse!
  end
end

# return all the even numbers less than the given number
def even_numbers_less_than num
  # set up empty array to place all even numbers
  array = []
  for i in 0...num
    # if even add that value to the array
    if(i % 2 == 0)
      array.push(i)
    end
  end
  return array
end

# return the average of all numbers in an array
def average numbers
  sum = 0.0
  num_length = (numbers.length).to_f
  numbers.each do |number|
    sum+=number
  end
  sum_float = sum.to_f
  return sum_float / num_length
end
