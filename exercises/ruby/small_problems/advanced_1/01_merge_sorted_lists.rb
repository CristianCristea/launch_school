# Merge Sorted Lists
# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result array. You must build the result array one element at a time in the proper order.

# Your solution should not mutate the input arrays.
# initiate an result array, refactor use each_with_object
# initiate a counter
# iterate over larger array
# compare current elem with elem from the arr2[counter]
# add smaller elem
# increment counter only if added elem is from arr2
# return the result

1 1 3, 2 2

1 < 2 - add 1
1 < 2  add 1
3 > 2 add 2
3 > 2 add 2
add 3


def merge(arr1, arr2)
  return arr2 if arr1.size < 1
  return arr1 if arr2.size < 1

  sorted_list = []
  arr1.each do |arr1_elem|

  end

end

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]