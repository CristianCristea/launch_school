# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# input: string
# output boolean

# reverse the string
# compare it to itself

def palindrome?(string)
  string == string.reverse
end

def palindrome?(string)
  reversed_string = ''
  string_size = string.size

  string_size.times do |i|
    reversed_string << string[string_size - i - 1]
  end

  string == reversed_string
end

# Examples:
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# Further Exploration
# Write a method that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array. Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

def palindromic_array?(arr)
  arr == arr.reverse
end

puts palindromic_array?([1,2,3,2,1]) == true

# string or array
def palindrome?(arg)
  arg == arg.reverse
end