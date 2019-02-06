# Write a method that takes an array of strings, and return an array of the some string values, excpt with the vowels removed

# init vowoels array
# init a strings array
# iterate through the words array
# word_without_vowles = ''
# convert each word to array of chars
# iterate over chars array a char
# if is not included in the vowels array
# add to word_without_vowels
# add word_without_vowels to strings array
# return joined strings array

# def remove_vowels(words)
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   strings = []

#   words.each do |word|
#     word_without_vowels = ''

#     word.split('').each do |char|
#       word_without_vowels << char if !vowels.include?(char.downcase)
#     end

#     strings << word_without_vowels
#   end

#   strings.join(', ')
# end

# use map ? - if one string has only vowels will return nil
# refactor
def remove_vowels(strings)
  vowels = ['a', 'e', 'i', 'o', 'u']
  new_strings = []

  strings.each do |str|
   selected_chars = str.split('').delete_if { |char| vowels.include?(char) }
   new_strings << selected_chars.join('')
  end

  new_strings.join(', ')
end

p remove_vowels(['green', 'yellow', 'black', 'white'])
# => grn, yllw, blck, wht