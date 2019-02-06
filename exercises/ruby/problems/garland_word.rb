# Description
# A garland word is one that starts and ends with the same N letters in the same order, for some N greater than 0, but less than the length of the word. I'll call the maximum N for which this works the garland word's degree. For instance, "onion" is a garland word of degree 2, because its first 2 letters "on" are the same as its last 2 letters. The name "garland word" comes from the fact that you can make chains of the word in this manner:

# onionionionionionionionionionion...
# Today's challenge is to write a function garland that, given a lowercase word, returns the degree of the word if it's a garland word, and 0 otherwise.


# input - lowercased string
# output - integer representing the garland word degree or 0

# a garland word begins and ends with the same group of letters
# the length of that letter group is the degree of the g_word

# compare 2 words
# onion
# onio == nion
# oni == ion
# on == on

# loop string.length times
# compare 2 strings - parts from the arg
  # string.slice(0, string.length - 1 - i)
  # string.slice(i, string.length)
# if they are the same - return string.slice(i, string.length).length

require 'pry'
def garland(string)
  iterations = string.size

  string.length.times do |i|
    string_start = string.slice(0, (iterations - 1) - i)
    string_end = string.slice(i + 1, iterations)

    return string_start.length if  string_start == string_end
  end
end

# refactor
def garland(str)
  garland_degree = 0

  # iteration begins at 1 !!!
  (1..str.length - 1).each do |i|
    # str[0, i] is str.slice(0, i)
    # check if the string ends with the sliced group of chars
    garland_degree = i if str.end_with?(str[0, i])
  end

  garland_degree
end



# Examples
garland("programmer")# -> 0
garland("ceramic")# -> 1
garland("onion")# -> 2
garland("alfalfa")# -> 4
