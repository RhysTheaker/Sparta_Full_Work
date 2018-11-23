# Basic and advanced mathematical calculator functions
def addition
  puts "Enter your first number"
  num1 = gets.chomp
  puts "Enter your second number"
  num2 = gets.chomp
  float_1 = num1.to_f
  float_2 = num2.to_f
  puts float_1 + float_2
end

def subtraction
  puts "Enter your first number"
  num1 = gets.chomp
  puts "Enter your second number"
  num2 = gets.chomp
  float_1 = num1.to_f
  float_2 = num2.to_f
  puts float_1 - float_2
end

def multiplication
  puts "Enter your first number"
  num1 = gets.chomp
  puts "Enter your second number"
  num2 = gets.chomp
  float_1 = num1.to_f
  float_2 = num2.to_f
  puts float_1 * float_2
end

def division
  puts "Enter your first number"
  num1 = gets.chomp
  puts "Enter your second number"
  num2 = gets.chomp
  float_1 = num1.to_f
  float_2 = num2.to_f
  puts float_1 / float_2
end

def power
  puts "Enter your first number"
  num1 = gets.chomp
  puts "Enter your second number"
  num2 = gets.chomp
  float_1 = num1.to_f
  float_2 = num2.to_f
  puts float_1 ** float_2
end

def square_root
  puts "Enter your number"
  num1 = gets.chomp
  float_1 = num1.to_f
  puts Math.sqrt(float_1)
end

#BMI calculators
def metric_bmi
  puts "Enter your height in meters"
  height = gets.chomp
  puts "Enter your weight in kg"
  weight = gets.chomp
  float_height = height.to_f
  float_weight = weight.to_f
  puts float_weight / (float_height**2)
end

def imperial_bmi
  puts "Enter your height in inches"
  height = gets.chomp
  puts "Enter your weight in pounds"
  weight = gets.chomp
  float_height = height.to_f
  float_weight = weight.to_f
  puts (float_weight / (float_height**2))*703
end

# Update mpg
def mpg_update(car_speed, mpg_old)
  if(car_speed > 60)
    reduce_mpg = (car_speed - 60)*2
    new_mpg = mpg_old - reduce_mpg
    if(new_mpg >= 0)
      return new_mpg
    elsif(new_mpg < 0)
      return "negative mpg"
    end
  else
    return mpg_old
  end
end

# Check if mpg is negative
def mpg_checker(mpg_val, dis_val, speed_val, cost_val)
  if(mpg_val < 0)
    puts "Error in calculation due to negative mpg"
  elsif(mpg_val > 0)
    time = (dis_val / speed_val).round(1)
    total_cost = ((dis_val / mpg_val)*cost_val).round(2)
    puts "Your journey will take #{time} hours, and cost £#{total_cost}"
  end
end

# Journey calculator
def journey
  puts "Enter your distance in km"
  distance = gets.chomp
  puts "Enter your fuel efficiency (mpg)"
  mpg = gets.chomp
  puts "Enter the cost of petrol/diesel, per gallon"
  cost = gets.chomp
  puts "Enter the speed of your vehicle"
  speed = gets.chomp
  float_distance = distance.to_f
  float_cost = cost.to_f
  float_speed = speed.to_f
  float_mpg = mpg.to_f
  float_mpg = mpg_update(float_speed, float_mpg)
  # time = (float_distance / float_speed).round(1)
  # total_cost = ((float_distance / float_mpg)*float_cost).round(2)
  mpg_checker(float_mpg, float_distance, float_speed, float_cost)

end


# Function to take initial user input
def calc(user_choice)
  if(user_choice == "m")
    puts "Do you require a (b)asic calculator, or an (a)dvanced calculator?"
    math_calc = gets.chomp
    if(math_calc == "b")
      puts "Which of the following functions would you like to access? (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?"
      basic_choice = gets.chomp
      if(basic_choice == "a")
        addition
      elsif(basic_choice == "s")
        subtraction
      elsif(basic_choice == "m")
        multiplication
      elsif(basic_choice == "d")
        division
      end
    elsif(math_calc == "a")
      puts "Which of the following functions would you like to access? (p)ower of, or (s)quare root?"
      advanced_choice = gets.chomp
      if(advanced_choice == "p")
        power
      elsif(advanced_choice == "s")
        square_root
      end
    end
  elsif(user_choice == "b")
    puts "Is the calculation being made in the (i)mperial or the (m)etric system?"
    system_choice = gets.chomp
    if(system_choice == "i")
      imperial_bmi
    elsif(system_choice == "m")
      metric_bmi
    end
  elsif(user_choice == "j")
    journey
  end
end
