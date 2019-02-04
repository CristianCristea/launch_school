# Multiples of 3 and 5
# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.


# input: integer - num
# output: integer - sum of multiples of 3 or 5 between 1 and num

# find multiples between 1 and number
# calculate sum
# return sum

# conver range 1..num to an array - numbers
# select elements from numbers that are multiples of 3 or 5 - el % 3 == 0 or el % 5 == 0 - multiples
# reduce multiples array to a integer sum
# return sum

def multisum(num)
  numbers = (1..num).to_a
  multiples = numbers.select { |n| n if n % 3 == 0 || n % 5 == 0 }

  multiples.reduce(0) { |sum, n| sum += n }
end

# refactor
def multisum(num)
  numbers = (1..num).to_a
  multiples = numbers.select { |n| n if n % 3 == 0 || n % 5 == 0 }

  multiples.reduce(:+)
end

# Examples
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
