class CalcEngine

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def multiply(num1, num2)
    num1*num2
  end

  def divide(num1, num2)
    num1.to_f / num2.to_f
  end

  def sqrt(num1)
    Math.sqrt(num1)
  end

  def power(num1, num2)
    num1**num2
  end

end
