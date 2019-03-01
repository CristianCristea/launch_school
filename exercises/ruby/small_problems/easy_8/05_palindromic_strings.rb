# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

def substrings_at_start(string)
  substrings = []
  string.length.times do |i|
    substrings.push(string[0..i])
  end

  substrings
end


def substrings(string)
  substrings = []
  string.size.times do |i|
    substrings << substrings_at_start(string[i..string.size])
  end

  substrings.flatten
end

def palindrome?(string)
  string.size > 1 && string == string.reverse
end

def palindromes(string)
all_substrings = substrings(string)

# select and return palindromic strings
all_substrings.select { |str| palindrome?(str) }
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]