# 1.
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
# 1
# 2
# 2
# 3

# 2.
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it?
# not equal, is used for comparison - if, unless statements

# put ! before something, like !user_name
# flip the boolean value like !true == false

# put ! after something, like words.uniq!
# code style convention, it's part of the name, should signalize that the name is a  method and is mutating the caller like String#reverse!

# put ? before something
# shortcut for a one letter string in order to make the code shoter
# like ?a == 'a'
# or part of the terniary operator ? :

# put ? after something
# code style convention, it's part of the name, should signalie that the name is a method and it will return a boolean value like Integer#odd?

# put !! before something, like !!user_name
# convert to boolean value like !!'test' == true

# 3.
# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

# 4.
#The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1) # delete the element at index 1 and return it
# 2
numbers.delete(1) # delete all elements with the value of 1 and return it
# 1

# 5.
# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

(10..100).include?(42)

# Range#cover? vs Range#include?
# #cover? checks if the argument would fit between the end points of a sorted list not if it actually exists
# #include? actually checks if the argument is between the end points
('a'..'z').cover?('cc')
# => true
('a'..'z').include?('cc')
# => false

# 6.
# Starting with the string:

famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "Four score and " << famous_words
famous_words = "Four score and " + famous_words
famous_words.prepend("Four score and ")

# 7.
# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

# This gives us a string that looks like a "recursive" method call:

"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call

eval(how_deep)
# what will be the result?

# 42

# 8.
# If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
flintstones.flatten!

# 9.
# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

barney = flintstones.select { |name, _| name == "Barney" }
barney = barney.to_a.flatten!
# refactor
barney = flintstones.assoc("Barney")


