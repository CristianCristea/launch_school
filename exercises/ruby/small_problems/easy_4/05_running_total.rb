# Running Totals
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# input: array of numbers
# output: array of numbers - current number is the sum of the previous number and himself

# initialize running_sum = 0
# map the array
# add current number to running_sum
# block return value will be running_sum
# map will return a new array
require 'pry'
# def running_total(arr)
#   running_sum = 0

#   arr.map { |n| running_sum += n }
# end

# further explorations
# Enumerable#each_with_object

# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) { |n, acc| acc.push(sum += n) }
# end

# Enumerable#inject
def running_total(arr)
  new_arr = []
  arr.inject(0) do |sum, n|
    new_arr << (sum + n)
    sum + n
  end
  new_arr
end

# Examples:
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []