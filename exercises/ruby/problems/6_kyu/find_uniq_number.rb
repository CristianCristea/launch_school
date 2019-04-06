# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# It’s guaranteed that array contains more than 3 numbers.
# The tests contain some very huge arrays, so think about performance.

# sort the array
# compare elements
# if first and second are equal return last else return first

def find_uniq(arr)
  sorted_arr = arr.sort

  sorted_arr[0] == sorted_arr[1] ? sorted_arr[-1] : sorted_arr[0]
end

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55