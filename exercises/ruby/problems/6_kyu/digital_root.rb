# In this kata, you must create a digital root function.

# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has more than one digit, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.

# Here's how it works:
digital_root(16)
# => 1 + 6
# => 7

digital_root(942)
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6

digital_root(132189)
# => 1 + 3 + 2 + 1 + 8 + 9
# => 24 ...
# => 2 + 4
# => 6

digital_root(493193)
# => 4 + 9 + 3 + 1 + 9 + 3
# => 29 ...
# => 2 + 9
# => 11 ...
# => 1 + 1
# => 2

# convert to string to array
# initialize sum of digits
# do reduce to sum of digits until sum of digits is between 0-9
# return sum of digits

def digital_root(n)
  string_digits = n.to_s.chars
  digits_sum = string_digits.reduce(0) { |sum, num|  sum += num.to_i }

  loop do
    digits_sum = digits_sum.to_s.chars.reduce(0) { |sum, num|  sum += num.to_i }
    break if (0..9).include?(digits_sum)
  end

  digits_sum
end

# refactor
def digital_root(n)
  n < 10 ? n : digital_root(n / 10 + n % 10)
end