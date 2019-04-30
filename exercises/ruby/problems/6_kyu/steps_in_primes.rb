# The prime numbers are not regularly spaced. For example from 2 to 3 the step is 1. From 3 to 5 the step is 2. From 7 to 11 it is 4. Between 2 and 50 we have the following pairs of 2-steps primes:

# 3, 5 - 5, 7, - 11, 13, - 17, 19, - 29, 31, - 41, 43

# We will write a function step with parameters:

# g (integer >= 2) which indicates the step we are looking for,

# m (integer >= 2) which gives the start of the search (m inclusive),

# n (integer >= m) which gives the end of the search (n inclusive)

# In the example above step(2, 2, 50) will return [3, 5] which is the first pair between 2 and 50 with a 2-steps.

# So this function should return the first pair of the two prime numbers spaced with a step of g between the limits m, n if these g-steps prime numbers exist otherwise nil or []

# input 3 integers, step, start, stop ( inclusive )
# output array of 2 prime numbers with the step between them or nil

# search the first 2 prime numbers with that step value between them, in the start..stop range

# convert the range start..stop to an array
# select the prime numbers
# itererate over array
# for each elem loop and calculate the difference between each next elem and current one
# if the difference == step return an array with the 2 elem
# if no such to elem found return nil

require 'pry'
def is_prime?(n)
  return false if n <= 1
  (2...n).each { |i| return false if n % i == 0 }
  true
end

def step(gap, start, stop)
  prime_numbers = (start..stop).to_a.select { |num| is_prime? num }

  prime_numbers.each.with_index do |number, i|
    (i...prime_numbers.size).each do |j|
      # binding.pry
      return [number, prime_numbers[j]] if gap == prime_numbers[j] - number
    end
  end

  nil
end


#Examples:
p step(2, 5, 7) # --> [5, 7]

p step(2, 5, 5) # --> nil

p step(4, 130, 200) # --> [163, 167]

# See more examples for your language in "RUN"
# Remarks:
# ([193, 197] is also such a 2-steps primes between 130 and 200 but it's not the first pair).

# step(6, 100, 110) --> [101, 107] though there is a prime between 101 and 107 which is 103; the pair 101-103 is a 2-step.
