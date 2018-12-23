# How Many?
# # Write a method that counts the number of occurrences of each element in a given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# iterate over array
# initialize a vehicles hash
# if the hash has a key with the elem name add 1 to value
# if not add the key => 1
# return hash

def count_occurrences(list)
  occurrences = {}

  list.each do |item|
    occurrences.has_key?(item) ? occurrences[item] += 1 : occurrences[item] = 1
  end

  occurrences.each { |item, count| puts "#{item} => #{count}" }
end

# refactor

def count_occurrences(array)
  occurrences = {}

  array.each { |elem| occurrences[elem] = array.count(elem) }

  occurrences.each { |elem, count| puts "#{elem} => #{count}" }
end