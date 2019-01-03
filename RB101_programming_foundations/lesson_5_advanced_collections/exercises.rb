# 1.
# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  a.to_i <=> b.to_i
end


# 2.
# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# sort_by published
books.sort_by { |book| book[:published].to_i }

# 3.
# For each of these collection objects demonstrate how you would reference the letter 'g'.

arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
g = arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
g = arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
g = arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
g = hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
g = hsh2[:third].keys()[0]

# 4.
# For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

# 5.
# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.
total_age = munsters.values.reduce(0) do |sum, person|
  sum += person["gender"] == "male" ?  person["age"] : 0
end

# 6.
# One of the most frequently used real-world string properties is that of "string substitution", where we take a hard-coded string and modify it with various parameters from our program.

# Given this previously seen family hash, print out the name, age and gender of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# ...like this:
# (Name) is a (age)-year-old (male or female).

munsters.each { |name, data| puts "#{name} is a #{data['age']}-year-old #{'gender'}" }

# 7.
# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# => [4, [3, 8]]
# a will be 2 and b [3, 8]

# 8.
# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# array
# store the vowels in an array
# initialize a found_vowels array
# iterate over hash check
# iterate over array
# scan each string for vowels
# push the vowels to the found_vowels

def find_vowels(hash)
  found_vowels = {}

  hash.each do |key, array|
    array.each do |word|
      found_vowels[key] = (word.scan(/[aeiou]/))
      puts word.scan(/[aeiou]/)
    end
  end

  found_vowels
end

# 9.
# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# map
# sort each array

arr.map { |sub_arr| sub_arr.sort }

# 10.
# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# map
# iterate through the elem(hash)
# increment the values

array.map do |hash|
  new_hash = {}
  hash.each { |k, v| new_hash[k] = v += 1 }
  new_hash
end

# 11.
# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# select
arr.map do |sub_arr|
  sub_arr.select { |n| n % 3 == 0 }
end

# 12.
# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hash = {}
arr.each do |sub_arr|
  hash[sub_arr[0]] = sub_arr[1]
end

p hash

# 13.
# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# The sorted array should look like this:
[[1, 8, 3], [1, 6, 7], [1, 4, 9]]