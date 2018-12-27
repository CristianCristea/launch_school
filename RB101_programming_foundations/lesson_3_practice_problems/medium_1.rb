# 1.
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

def indent_string(string, number)
  number.times do |n|
    puts string.prepend(' ' * n)
  end
end

indent_string('The Flinstones Rock!', 10)

# 2.
# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# the puts method returns nil
# fix with string interpolation or call #to_s on the calculation

puts "the value of 40 + 2 is #{40 + 2 }"
puts "the value of 40 + 2 is " + (40 + 2).to_s

#3.
# Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

while divisor > 0 do
end

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# check if the number is a divisor- if the number divides without remainder

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# to implicitly return the factors array


# 4.