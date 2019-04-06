# Merge Sorted Lists
# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.

# compare elements from the first and second array
# add the lesser or equal element
# store the remaining elem from the comparison
# compare it with the next elem from the first array
# loop sum of the array lengths
# compare arr1[counter1] with arr2[counter2]
# add the lesser or equal to the result array
# increment the coresp counter

# [1, 5, 9], [2, 6, 8]

# 1 < 2 - add 1
# 5 > 2 - add 2
# 5 < 6 - add 5
# 9 > 6 - add 6
# 9 > 8 - add 8
# add 9

def merge(arr1, arr2)
  return arr2 if arr1.size < 1
  return arr1 if arr2.size < 1

  merged_lists = []
  counter1 = 0
  counter2 = 0
  iterations = arr1.size + arr2.size

  iterations.times do |n|
    if arr1[counter1] == nil
      merged_lists << arr2[counter2]
    elsif arr2[counter2] == nil
      merged_lists << arr1[counter1]
    elsif arr1[counter1] <= arr2[counter2]
      merged_lists << arr1[counter1]
      counter1 += 1
    else
      merged_lists << arr2[counter2]
      counter2 += 1
    end
  end

  merged_lists
end

# refactor
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    # if false add elem from array1 else add elem from array2, increment counter
    # index2 < array2.size - return valid elem from array2 - not nil
    # array2[index2] <= value - current elem from array2 is less than current elem from array1
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end
  
  # if array2.size is greater then array1.size add the remaining elements
  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]