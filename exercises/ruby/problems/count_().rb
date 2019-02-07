# Write a method that takes a string and returns a boolean indicating whether this string has a balaced number of parantheses.


def balancer(string)
  string.count('(') == string.count(')')
end

puts balancer('hi') # true
puts balancer('(hi') # false
puts balancer('(hi)') # true

# check the order of the parantheses
def balancer(string)
  return false if string.count('(') != string.count(')')

  counter = 0

  string.split('').each do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'

    return false if counter < 0
  end

  true
end

puts balancer(')(') # => false