
# Halvsies
# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# if array length is odd
# mid = arr.length / 2 + 1 else is arr.length / 2
# first_elem = arr.slice(0, mid)
# second_elem slice from mid to end
# return an array with the 2 elem

def halvsies(arr)
  len = arr.length
# mid = len.odd? ? (len / 2) + 1 : len / 2
  mid = (len / 2.0).ceil
  first_arr = arr.slice(0, mid)
  second_arr = arr.slice(mid, len - first_arr.size)

  [first_arr, second_arr]
end

# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]