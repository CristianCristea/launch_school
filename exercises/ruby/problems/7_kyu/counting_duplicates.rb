# Count the number of Duplicates
# Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

# Example
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

#1
# define a counter = 0
# split to an array of characters - chars
# iterate over chars
# count the current char in array
#   if > 1 increment counter
# return counter

def duplicate_count(text)
  counter = 0
  chars = text.downcase.chars

  chars.uniq.each { |char| counter += 1 if chars.count(char) > 1}
  counter
end