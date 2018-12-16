# Build a command line calculator program that does the following:

# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# displays the result

require 'pry'

def calculate(num1, num2, operator)
  result = 0
  result = case operator
  when '1'
    num1 + num2
  when '2'
    num1 - num2
  when '3'
    num1 * num2
  when '4'
    num2 == 0 ? 'Cannot divide by 0' : num1.to_f / num2.to_f
  end

  result
end

puts "Fist number : "
num1 = gets.chomp.to_i
puts "Second number: "
num2 = gets.chomp.to_i
puts "Operation(1)add, 2)subtract, 3)multiply, 4)divide): "
operator = gets.chomp

puts "Result: #{calculate(num1, num2, operator)}"