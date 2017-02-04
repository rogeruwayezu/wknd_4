# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:

puts "TESTING ..."
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new

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

result = fancy_calculator.square_root(25)
puts "square_root method returned:"
puts result
puts

if result == 5
  puts "PASS!"
else
  puts "F"
end
puts