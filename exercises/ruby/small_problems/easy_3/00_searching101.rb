# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Examples:

# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].


# input integers (6 times)
# output string
# data type array

# get input
# store input (6 integers)in numbers array
# pop last interger - searched_number
# return string if the numbers contains the searched number or not


def integer_suffix(int)
  case int
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

numbers = []

6.times do |n|
  puts "==> Enter the #{n + 1}#{integer_suffix(n + 1)} number:"
  num = gets.chomp.to_i
  numbers << num
end

  searched_number = numbers.pop
  puts numbers.include?(searched_number) ? "The number #{searched_number} does appear in #{numbers}" : "The number #{searched_number} does not aappear in #{numbers}"