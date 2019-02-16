# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# split the string into words array
# initialize a words_size hash
# iterate over words
# if words_size has a word.length key -> increment value
# else add key with value of 1

def word_sizes(string)
  words = string.split
  words_length = {}

  words.each do |word|
    words_length.has_key?(word.size) ? words_length[word.size] += 1 : words_length[word.size] = 1
  end

  words_length
end

# refactor
def word_sizes(string)
  words = string.split

  words.each_with_object({}) do |word, hash|
    hash.has_key?(word.size) ? hash[word.size] += 1 : hash[word.size] = 1
  end
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Letter Counter (Part 2)
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

def word_sizes(string)
  words = string.split

  words.each_with_object(Hash.new(0)) do |word, hash|
    word_size = word.gsub(/[^a-zA-Z]/, '').size
   hash[word_size] += 1
  end
end

# Hash.new(0) set default value of 0 to not existing keys

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}