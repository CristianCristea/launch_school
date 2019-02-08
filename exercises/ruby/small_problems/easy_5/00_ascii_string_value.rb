# ASCII String Value
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)
require 'pry'
def ascii_value(string)
  sum = 0
  string.split('').each { |char| sum += char.ord }

  sum
end

# refactor 1
def ascii_value(string)
  string.split('').reduce(0) { |sum, char| sum + char.ord}
end

# refactor 2
def ascii_value(string)
  string.split('').map(&:ord).reduce(0, :+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0