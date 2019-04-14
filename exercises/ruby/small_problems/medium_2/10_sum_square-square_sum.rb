# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

def sum_square_difference(num)
  sum = 0
  square_sum = 0

  1.upto(num) do |n|
    sum += n
    square_sum += n**2
  end

  sum**2 - square_sum
end


# Examples:
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150