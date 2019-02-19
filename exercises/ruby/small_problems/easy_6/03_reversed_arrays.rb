# Reversed Arrays (Part 1)
# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.

# loop array.length times
# 1,2,3,4
# 1243
# 1432
# 4321
# 4,3,2,1
# push arr[-2]
# push arr[-3]
# push arr[-4]

def reverse!(arr)
  return arr if arr.length <= 1
  len = arr.length - 1
  counter = -2

  loop do
    arr.push(arr.slice!(counter))
    break if counter.abs == arr.length
    counter -= 1
  end

  arr
end

# refactor
def reverse!(arr)
  left_index = 0
  right_index = -1

  while left_index < arr.length / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]

    left_index += 1
    right_index -= 1
  end

  array
end

# Examples:
list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
list == []