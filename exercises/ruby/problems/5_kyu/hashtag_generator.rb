# The marketing team is spending way too much time typing in hashtags.
# Let's help them with out own Hashtag Generator!

# Here's the deal:
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.

# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false

# return a string startin with # followed by joined capitalized words
# empty string or string longer as 140 chars returns false
# remove all empty spaces

# guard clause - return false if the arg is empty or longer as 140 chars
# what if the string already starts with # - do not count ir
# split the arg into words
# iterate over array
# capitalize words
# join words
# append to # and return

def generate_hashtag(string)
  return false if string.empty? || string.gsub(' ', '').size >= 140
  capitalized_words = string.gsub(/#/, '').split.map(&:capitalize).join('')

  '#' << capitalized_words
end