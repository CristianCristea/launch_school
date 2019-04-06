# The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples
"din"      # =>  "((("
"recede"   # =>  "()()()"
"Success"  # =>  ")())())"
"(( @"     # =>  "))(("

# split the string to an chars array
# initialize a coded_string empty string
# iterate over the chars
# if num of chars in the chars arr is greater than 1 add ) else add (
# return coded_string

def duplicate_encode(string)
  coded_string = ''
  chars = string.downcase.chars

  chars.each { |char| chars.count(char) > 1 ? coded_string << ')' : coded_string << '(' }

  coded_string
end

# refactor

def duplicate_encode(string)
  string.chars.map { |char| string.downcase.count(char) > 1 ? ')' : '(' }.join('')
end