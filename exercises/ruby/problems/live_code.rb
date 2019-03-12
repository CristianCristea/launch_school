# 1. find substrings
# - input string
# - output array of substrings
# - initialize an results array
# - counter
# - iterate string.size times
# - slice string from counter to n
# - increment counter

def substrings(string)
  counter = 0
  result = []

  string.size.times do |n|
    result << string.slice(0, n + 1).downcase
  end

  result.select { |s| s.size > 1 }
end


def all_substrings(string)
  result = []

  string.size.times do |n|
    result << substrings(string.slice(n, string.size))
  end

  result.flatten!
end

# p substrings("Something")
# p all_substrings("Hello")

def substring_test(str1, str2)
  substrings1 = all_substrings(str1)
  substrings2 = all_substrings(str2)

  substrings2.each do |string|
    return true if substrings1.include?(string)

  end

  false
end

p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true
# hello
# he
# hell
# hello
# el
# ell
# ello
# ll
# llo
# lo

# refactor
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end