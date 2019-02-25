# Does My List Include This?
# Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

# 1. iterate over the array and compare current elem with the value - return true if found else false
# 2. filter the array - select the elem in the array with the same values as the second param
# 3. use Array#index method

def include?(arr, val)
  !!arr.index(val)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false