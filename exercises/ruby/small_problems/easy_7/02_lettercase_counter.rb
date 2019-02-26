# Lettercase Counter
# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# string -> hash
# 1. split the string an to array, iterate over array(#each_with_object - use { lowercase: 0, uppercase: 0, neither: 0 } as initial value), increment the value based on the ASCII values for lowercase, uppercase letters and other chars or based on 2 predefined constants with letters

LOWERCASE_LETTERS = ('a'..'z').to_a
UPPERCASE_LETTERS = ('A'..'Z').to_a

def letter_case_count(string)
  hash = {
    lowercase: 0,
    uppercase: 0,
    neither: 0
  }

  string.split('').each_with_object(hash) do |char, hash|
    if LOWERCASE_LETTERS.include?(char)
      hash[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

# refactor using regex
def letter_case_count(string)
  lowercase_letters = string.scan(/[a-z]/).size
  uppercase_letters = string.scan(/[A-Z]/).size
  neither = string.scan(/[^a-z]/i).size

  {
    lowercase: lowercase_letters,
    uppercase: uppercase_letters,
    neither: neither
  }
end

# Examples
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }