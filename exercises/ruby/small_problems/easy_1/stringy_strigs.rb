# Stringy Strings
# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# Further Exploration
# Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

# initialize a number_string = start_with.to_s
# iterate number.to_s.size -1 times
# if previous char is 1 add '0' else add 1
# return the string

def stringy(number, start_with = 1)
  if start_with != 1 && start_with != 0
    puts 'Invalid value for start. Only 1 and 0 allowed'
    return
  end

  number_string = start_with.to_s
  iterations = number - 1

  iterations.times do |previous_number|
    number_string[previous_number] == '1' ?  number_string << '0' : number_string << '1'
  end

  number_string
end

# Examples:
puts stringy(6) == '101010'
puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(4, 0) == '0101'
puts stringy(7) == '1010101'
puts stringy(7, 0) == '0101010'