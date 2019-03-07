# Give us your feedback
# Word to Digit
# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# initialize a digits array with the digit words
# split the string into a words array
# map with index the array
# if the words array includes current word replace the word with the index
# return array

def word_to_digit(string)
  digits = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  words = string.split
  replaced_digits = words.map do |word|
    digits.include?(word) ? digits.index(word) : word
  end

  replaced_digits.join(' ')
end

# Example:
p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
