# A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

# sanitaze string
# only lowercase letters
# sort them
# compare to alphabet

def pangram?(string)
  alphabet = ('a'..'z').to_a
  clean_string = string.downcase.scan(/[a-z]/).uniq.sort

  return alphabet == clean_string
end

# refactor
# use the alphabet length

def pangram?(string)
  string.downcase.scan(/[a-z]/).uniq == 26
end
