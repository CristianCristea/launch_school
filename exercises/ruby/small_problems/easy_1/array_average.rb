# Array Average
# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.


def average(array)
  array.sum / array.length
end

def average(array)
  array.reduce(&:+) / array.length
end

# float
# calculate array sum divide by length as a float number and round to 2 decimals
def average(array)
  (array.reduce(&:+) / array.length.to_f).round(2)
end

# Examples:
# return integer
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# return float
puts average([9, 47, 23, 95, 16, 52]) == 40.33
