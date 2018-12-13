# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.Add two strings together that, when concatenated, return your first and last name as your full name in one string.

"John " + "Doe"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10
ones = 4936 % 1000 % 100 % 10

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.

movies = {
  "Saving Private Ryan" => 1998,
  "American History X" => 1998,
  "Jack Frost" => 1998,
  "The Truman Show" => 1998,
  "BASEketball" => 1998,
  "Wild Things" => 1998,
  "The Waterboy" => 1998,
}

movies.each { |_, y| puts y }

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
years = [1998, 1998, 1998, 1998, 1998, 1998, 1998]

years.each { |y| puts y }

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
def factorial(num)
  result = 1
  (1..num).step { |n| result *= n }

  result
end

puts factorial(5)
puts factorial(6)
puts factorial(7)
puts factorial(8)

# 6.Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

def square(n)
  n * n
end

puts square(3.45)
puts square(4.5)
puts square(1.5)

# 7. What does the following error message tell you?

# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# a syntax error was raised - wrong closing parenthesis on line 16 in irb

# 8.
