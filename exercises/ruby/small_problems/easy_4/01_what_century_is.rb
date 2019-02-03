# What Century is That?
# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


def number_suffix(number)
  string = number.to_s
  last_index = string.length

  return 'th' if [11, 12, 13].include?(number % 100)

  case string[last_index - 1]
    when '1' then 'st'
    when '2' then 'nd'
    when '3' then 'rd'
    else 'th'
  end
end

def century(year)
  cent = year % 100 == 0 ? year / 100 : year / 100 + 1

  cent.to_s << number_suffix(cent)
end

# Examples:
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'