# Given a string of length N, the number of substrings that can be formed=N(N+1)/2

# The idea is to use a prefix sum array-based technique where we store the occurrences of each character in all the substrings concatenated.

#! store how many times a char appears in all substrings

# For the first character,
# no. of occurrences = no. of substrings starting with the first character = N.

# For each of the following characters, we store the
# no. of substrings starting with that character + the number of substrings formed by the previous characters containing this character – the number of substrings formed by the previous characters only.

def count_vowels(string)
  n = string.size
  char_occurrences_in_substrings = []
  sum = 0

  # char_occurrences_in_substrings stores the number of occurrences of every char from the input in every substring
  n.times do |i|
    if i == 0
      char_occurrences_in_substrings << n
    else
      char_occurrences_in_substrings << ((n - i) + char_occurrences_in_substrings[i - 1] - i)
    end
  end

  # if the char is a vowel add the his occurences to sum
  string.chars.each.with_index do |char, idx|
    sum += %w(a e i o u A E I O U).include?(char) ? char_occurrences_in_substrings[idx] : 0
  end

  sum
end

# for 'baceb' arr = [5, 8, 9, 8, 5]
# b = 5 times in all substrings
# a = 8 times in all substrings
#...
p count_vowels('baceb')


# Mental model
# n = string.size
arr = []

string.size.times do |i|
  if i == 0
    arr << string.size
  else
    arr << ((string.size - i) + char_occurrences_in_substrings[i - 1] - i)
  end
end

string = 'baceb'
'b'
i = 0
arr = [5] # i == 0 => arr < string.size
'a'
i = 1
arr = [5, 8]
arr << ((string.size - i) + arr[i - 1] - i)
# string.size - i  => all the substrings starting with 'a'
# char_occurences_in_substrings[i - 1] => occurences in the substrings starting with the previous char
# - i => minus the substrins formed before the current char
# ex baceb substrings
# b, ba, bac, bace, baceb
# here for a will be - 1 occurence in the first substring
# 4 + (5 - 1)

'c' # => arr << 3 + (8 - 2) = 9
i = 2
arr[i - 1] = 8
arr = [5, 8, 9]

'e' # => arr << 2 + (9 - 3) = 8
i = 3
arr[i - 1] = 9
arr = [5, 8, 9, 8]

'b' # => arr << 1 + (8 - 4) = 5
i = 4
arr[i - 1] = 8
arr = [5, 8, 9, 8, 5]

# refactor
def vowel_recognition input
  input.chars.each.with_index.inject(0) do  |sum, (c, i)|
    sum += %w(a e i o u A E I O U).include?(c) ? (input.size - i) * (i + 1) : 0
  end
end

vowel_recognition('baceb')