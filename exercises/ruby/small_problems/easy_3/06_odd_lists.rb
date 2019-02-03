# Odd Lists
# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.


def oddities(arr)
  arr.select { |elem| elem if arr.index(elem).even? }
end

def oddities(arr)
  odd_elements = []
  arr.each { |elem| odd_elements << elem if arr.index(elem).even? }

  odd_elements
end

def oddities(arr)
  odd_elements = []
  counter = 0

  loop do
    odd_elements << arr[counter] if counter.even?
  end

  odd_elements
end


# Examples:
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []