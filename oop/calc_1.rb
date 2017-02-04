# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

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