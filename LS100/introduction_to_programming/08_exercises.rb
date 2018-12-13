# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each { |n| puts n }

# 2. Same as above, but only print out values greater than 5.

numbers.each { |n| puts n if n > 5 }

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

numbers.select { |n| n.odd?(n) }

# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.
numbers.push(11)
numbers.unshift(0)

# 5. Get rid of "11". And append a "3".
numbers.pop()
numbers.push(3)

# 6. Get rid of duplicates without specifically removing any one value.

numbers.uniq!

# 7. What's the major difference between an Array and a Hash?

# an array is an ordered list with indexes from 0
# a hash containes key-value pairs

# 8. Create a Hash using both Ruby syntax styles.

old = {:old => "test"}
new = {new: "test"}

# 9. Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h[:b]
h[:e] = 5
h.each { |k, v| delete h[k] if v < 3.5 }

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)
# hash values can be array
# you can have an array of hashes

# 11. Look at several Rails/Ruby online API sources and say which one you like best and why.
# https://guides.rubyonrails.org/api_app.html - Rail
# http://ruby-doc.org/ - Ruby
# great references

# 12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def format_contact_data(data)
 {
  email: data[0],
  address: data[1],
  phone: data[2]
 }
end

contacts["Joe Smith"] = format_contact_data(contact_data[0])
contacts["Sally Johnson"] = format_contact_data(contact_data[1])

p contacts

# 13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

# 14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |contact, data|
  fields.each_with_index do |field, i|
    data[field] = contact_data[i]
  end
end

# Solution to bonus, where we can work with multiple entries in the contacts hash:

contact_data = [
  ["joe@email.com", "123 Main st.", "555-123-4567"],
  ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each_with_index do |field, j|
    hash[field] = contact_data[idx][j]
  end
end

# 15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?('s')}
arr.delete_if { |word| word.start_with?('s', 'w')}

# 16. Take the following array:
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
result = []

a.each do |words|
  result.push(words.split(' '))
end

result.flatten!
p result
# or

a.map { |words| words.split(' ')}
a.flatten!
p a

# 17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# These hashes are the same!