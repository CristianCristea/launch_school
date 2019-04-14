# As a data engineer your first task is to make vowel recognition dataset. In this task you have to find the presence of vowels in all possible substrings of the given string. For each given string you have to return the total number of vowels.

# Example
# Given a string "baceb" you can split it into substrings: b, ba, bac, bace, baceb, a, ac, ace, aceb, c, ce, ceb, e, eb, b. The number of vowels in each of these substrings is 0, 1, 1, 2, 2, 1, 1, 2, 2, 0, 1, 1, 1, 1, 0; if you sum up these number, you get 16 - the expected output.

def find_substrings_from_start(str)
  substrings = []
  str.size.times { |i| substrings << str[0..i] }
  substrings
end

def find_substrings(str)
  start_idx = 0
  substrings = []

  str.size.times do
    substrings << find_substrings_from_start(str[start_idx..str.size])
    start_idx += 1
  end

  substrings.flatten
end

def count_vowels(arr)
  sum = 0
  arr.each {|str| sum += str.scan(/[aeiou]/i).size}

  sum
end

# refactor

def count_vowels(str)
  substrings = []
  start_idx = 0

  str.size.times do
    substring = str[start_idx..str.size]
    substring.size.times do |idx|
      substrings << substring[0..idx]
    end
    start_idx += 1
  end

  substrings.join.scan(/[aeiou]/i).size
end
