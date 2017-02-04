# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module Operation

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator

  include Operation
end

class FancyCalculator

  include Operation

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "TESTING ..."
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new
whiz_bang_calculator = WhizBangCalculator.new

result = simple_calculator.add(5, 8)
puts "add method returned:"
puts result
puts

if result == 13
  puts "PASS!"
else
  puts "F"
end

result = simple_calculator.subtract(10, 6)
puts "subtract method returned:"
puts result
puts

if result == 4
  puts "PASS!"
else
  puts "F"
end
puts

result = simple_calculator.multiply(2, 4)
puts "multiply method returned:"
puts result
puts

if result == 8
  puts "PASS!"
else
  puts "F"
end
puts

result = fancy_calculator.divide(10, 5)
puts "divide method returned:"
puts result
puts

if result == 2
  puts "PASS!"
else
  puts "F"
end
puts

result = whiz_bang_calculator.square_root(25)
puts "square_root method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end
puts

result = whiz_bang_calculator.multiply(5, 4)
puts "multiply method returned:"
puts result
puts

if result == 20
  puts "PASS!"
else
  puts "F"
end
puts

