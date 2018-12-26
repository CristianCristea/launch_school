# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# without looping or iterators
# convert to string
# split to array
# use Array#sum to convert each elem to integer and return sum
def sum(number)
  number.to_s.split('').sum { |n| n.to_i }
end

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).