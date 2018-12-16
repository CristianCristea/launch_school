# 1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

sisters_brothers = family.select {|k,_| k == :sisters || k == :brothers}.values.flatten

# 2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge returns a new hash
# merge! mutates the caller

# 3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

family.keys { |k| puts k }
family.values { |v| puts v }
family.each { |k, v| puts "key: #{k} - value #{v}"}

# 4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
# has_value(val)


# 6. Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

["demo", "dome", "mode"]
["neon", "none"]
# (etc)

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams = {}

words.each do |word|
  key = word.split('').sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = []
  end
end

anagrams.each_value {|v| print v}

# 7.  What's the difference between the two hashes that were created?
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# my_hash has the symbol :x as key
# my_hash2 has the variable x as key which evaluates to a string

# 8. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# B



