# Write a method that takes two arguments: the first is the stratirng number, and the second is the ending number. Print out all numbers between the two number, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# iterate over range of numbers from 1 to n
# if divisible by 5 and 3 puts "FizzBuzz"
# if divisible only by 5 puts "Buzz"
# if divisible only by 3 puts "Fizz"
# else puts the number

def fizzbuzz(start, finish)
  elements = []

  (start..finish).each do |n|
   if (n % 5 == 0) && (n % 3 == 0)
      elements << "FizzBuzz"
   elsif n % 5 == 0
      elements << "Buzz"
   elsif n % 3 == 0
      elements << "Fizz"
   else
      elements << n
    end
  end

  elements.join(', ')
end

puts fizzbuzz(1, 15)
# => 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"