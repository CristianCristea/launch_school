# You have an array of numbers.
# Your task is to sort ascending odd numbers but even numbers must be on their places.

# Zero isn't an odd number and you don't need to move it. If you have an empty array, you need to return it.

# sort the odd numbers and call Enumeator#each on it to return an enumerator obj
# an enumerator obj allows us to keep an internal state and use Enumerator#next
# map through the original array
# if the current number is odd replace it with the current number in the sorted odd numbers array
# use the next method to return the current odd elem - returns the elem and moves the internal position
# https://ruby-doc.org/core-2.2.3/Enumerator.html#method-i-next

def sort_array(arr)
  sorted_odd_numbers = arr.select(&:odd?).sort.each # returns an enumerator
  arr.map{ |num| num.odd? ? sorted_odd_numbers.next : num }
end


