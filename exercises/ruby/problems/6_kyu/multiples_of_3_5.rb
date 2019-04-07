# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Note: If the number is a multiple of both 3 and 5, only count it once.

# find all multiples of 3 and 5 in the range from 1 to number and calculate the sum of found numbers
# if the number is multiple of 3 and 5 (e.g. 15) add him once

# define a range 1..number, convert to array
# select number if is a multiple of 3 or 5
# reduce the seleted array to the sum of its numbers

def solution(number)
  numbers = (1...number).to_a

  numbers.select { |n| n % 3 == 0 || n % 5 == 0 }.reduce(&:+)
end