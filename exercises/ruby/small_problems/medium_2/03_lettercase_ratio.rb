# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase characters, as well as characters that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.
=begin
- count lowecase, uppercase and other
- calculate and return percentage hash

- initialize a chars_procentage hash
- calculate the chars(lower-, uppercase, none) procentage - part/total * 100
- add it to hash
- return hash
=end

def letter_percentages(string)
  chars_percentage = {}
  chars_percentage[:lowercase] = (string.scan(/[a-z]/).count / string.size.to_f) * 100
  chars_percentage[:uppercase] = (string.scan(/[A-Z]/).count / string.size.to_f) * 100
  chars_percentage[:neither] = (string.scan(/[^a-z]/i).count / string.size.to_f) * 100

  format_percentages(chars_percentage)
end

def format_percentages(chars_percentage)
  chars_percentage.map {|(k, percentage)| [k, format("%.2f", percentage).to_f]}.to_h
end

# Examples
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI') == {:lowercase=>66.67, :uppercase=>33.33, :neither=>0.0}