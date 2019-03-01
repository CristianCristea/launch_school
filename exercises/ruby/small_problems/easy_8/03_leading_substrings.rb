# Leading Substrings
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

# initialize an empty array
# loop string.size times
# add the substring from 0 to current index to the result array
# return the result array

def substrings_at_start(string)
  substrings = []
  string.length.times do |i|
    substrings.push(string[0..i])
  end

  substrings
end

# Examples:
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']