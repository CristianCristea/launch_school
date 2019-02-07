# Convert a Signed Number to a String!
# In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, use integer_to_string from the previous exercise.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''

  loop do
    number, reminder = number.divmod(10)
    string.prepend(DIGITS[reminder])

    break if number == 0
  end

  string
end

def signed_integer_to_string(number)
  return integer_to_string(number) if number == 0

  number < 0 ? "-#{integer_to_string(number)}" :
  "+#{integer_to_string(number)}"
end

# Examples
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'