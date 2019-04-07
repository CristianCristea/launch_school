# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# select all odd elem
# if odd_numbers == 1 return first number
# else find and return even number


def find_outlier(arr)
  odd_numbers = arr.select { |n| n.odd? }

  odd_numbers.size == 1 ? odd_numbers.first : arr.find{ |n| n.even? }
end

# partition - takes a block, returns 2 arrays, first elem for which the block returns true, second for false
# [1].one? # true
# [1, 1].one? # false

# refactor
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

# Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)