# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.
# Example:

repeat('Hello', 3)
# Output:
# Hello
# Hello
# Hello

# input
# 2 args - string and a positive integer - n
# output
# print the string n times

# algorithm
# loop n times
# each iteration print the string

def repeat(string, number)
  number.times { puts string }
end

# or

def repeat(string, number)
  while number > 0
    puts string
    number -= 1
  end
end

