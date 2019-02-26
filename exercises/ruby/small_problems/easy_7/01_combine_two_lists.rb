# Combine Two Lists
# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# each with index

def interleave(arr1, arr2)
  result = []

  arr1.each_with_index do |value, index|
    result.push(value, arr2[index])
  end

  result
end

def interleave(arr1, arr2)
  arr1.each_with_object([]).with_index do |(elem, array), i|
    array.push(elem, arr2[i])
  end
end

# refactor
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

# Example:
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']