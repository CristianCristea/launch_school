# 1.
# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# the string 'hi' will evaluate to true, #select will return a new array with all the elements from the initial array
[1, 2, 3]

# 2.
# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# counts the elements for which block returns true
# check the docs
# => 2

# 3.
# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# return a new array
# add the elements for which the block evaluates to false
# [1, 2, 3]

# 4.
# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# return value
{
  'a' => 'ant',
  'b' => 'bear',
  'c' => 'cat'
}

# #each_with_object returns an object(hash), each iteration adds a new pair


# 5.
# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# mutates the hash
# removes and returns (as an array) the first element

# 6.
# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11
# #pop method distructively removes and returns the last element which is a string with a length of 11

# 7.
# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# the block return value is a boolean value returned from the Integer#odd? method
# #odd? returns true if the number % 2 has a reminder
# #any? will output the number form current iterations and will return true after one iteration


# 8.
# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# returns a new array with the first n elements from the original array
# it is not distructive
# read the docs

# 9.
# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# return value of #map is always an array
# here will return an array of values
# the element is nil when the block returns false or a falsy value
# => [nil, 'bear']

# 10.
# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# 2 > 1, 3 > 1 the puts num expression will return nil