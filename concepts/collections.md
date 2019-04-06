# Collections

- are structured containers that contain mutiple elements
- like a list

## String

- use integer based index starting at 0
- each index represents a char in the string

```ruby
string = 'abc'
# access using the index
string[0] # => 'a'

# this is syntactical sugar - is actually a call to String#slice
# string[start_index, number_of_elements]
string[0, 2] # => 'ab'
```

## Array

- are index based collections, starting from 0
- elements can be accessed using the index
- can use syntactical sugar like with the string

```ruby
arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[0] # => 'a'
arr[2, 3] # => ["c", "d", "e"]
arr[2, 3][0] # => "c"
```

## Hash

- uses key-value pairs to store data
- when initializing a hash, the keys must be unique or they will be overwritten
- although both hash keys and values can be any object in Ruby, it is common practice to use symbols as the keys
- symbols in Ruby can be thought of as immutable strings.
- initialize a hash with Hash.new(obj) syntax will set the obj as default value for undefined keys

```ruby
hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"

hash = Hash.new('Default')
hash[:non_existing_key] # => Default
hash[:anything] # => Default
```

- **Elements in String and Array objects can be referenced using negative indices, starting from the last index in the collection -1 and working backwards.**
- can use #fetch method on array and hash to retrive an element, the method will raise an error if the index is out of bounds or key does not exist

# iterators

## #each

- iteration
- does not consider the return value of the block
- returns the original collection
- same length with the original array

## #map

- transformation
- changes each element based on the return value of the block
- returns new collection
- has the same length with the original array
- always returns an array even when called on a hash

## #select

- selection
- considers the truthiness of the returned expression
- returns new collection
- can have a different length comparing to the original array

## #reduce == #inject

- use to mutate an array or a collection

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.sum # returns the values sum

# or for example purpuse
ages.values.inject(:+)
```

## #each_with_object

- use when you want to return a new object(hash or array)

```ruby
mapping = {'ż' => 'Ż', 'ó' => 'Ó'}
lower = 'a'..'z'
lower.each_with_object(mapping) do |char, hash|
  hash[char] = char.upcase
end

# or
# return a hash with the name as key and index as value
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

```
