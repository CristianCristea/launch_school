# List of Digits
# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# convert the num to string
# split the string
# iterate through the array and convert to numbers
# return array

def digit_list(numbers)
  numbers.to_s.split('').map { |n| n.to_i }
end

def digit_list(numbers)
  numbers.to_s.split('').map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true