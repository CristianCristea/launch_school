# In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers. This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# calculate fibonacci numbers
# fibonacci series - each number is the sum of the previous 2 number
# start with 1, 1
# init a fibonacci array
# loop n - 2 times
# add previous 2 numbers using the array index
# return last value

def fibonacci_last(n)
  fibonacci = [1, 1]
  2.upto(n - 1) { |i| fibonacci << fibonacci[i - 1] + fibonacci[i - 2]}
  fibonacci.last
end

# Examples:
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)

def indent(string, num)
  num.times { |i| puts ' ' * i << string}
end
