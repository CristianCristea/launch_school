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

- are also 0 indexed collections
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

```ruby
hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

hsh['fruit']    # => "apple"
hsh['fruit'][0] # => "a"
```

- **Elements in String and Array objects can be referenced using negative indices, starting from the last index in the collection -1 and working backwards.**
- can use #fetch method on array and hash to retrive an element, the method will raise an error if the index is out of bounds or key does not exist

# iterators

1. #each - iteration, does not consider the return value of the block, returns the original collection, same length
2. #map - transformation, changes each element based on the return value of the block, returns new collection, has the same length
3. #select - selection, considers the truthiness of the returned expression, returns new collection, can have a different length
