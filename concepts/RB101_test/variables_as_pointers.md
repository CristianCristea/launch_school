# Variables are pointers to physical space in memory

- if 2 variables have the same data doesn't mean that they point to the same space in memory
- if 2 variables point to the same data and the date is mutated, then both of them will point to the new data
- if 2 variables point to the same data and one is reassigned, then they will point to different values
- data can be mutated inside the method definition!!! - that will pemanently change the object outside the method definition
- `+=` is reassigning so it will point to a new location in memory
- `<<` it modifies in place so it will still point to the same location
- `+` string concatenation is non-distructive - returns a new object

```ruby
# + and +=
str = 'hello'

def change_str(s)
  s + ' universe' # will return a new string object, so str will still point to 'hello'
  s << ' world'  # will change the value wo which str points to 'hello world'
end

change_str(str)
p str # hello world

str = 'hello'

def change_str(s)
  # will reassign str to a new string, so str inside the method definition will point to a new place in memory 'hello universe'
  # str in outer scope will still point to 'hello'
  s += ' universe'
  s << ' world'  # will change the new 'hello universe' object
end

change_str(str) # => hello universe world
p str # hello

# mutating data
a = 'hello'
b = a
a << ' Tom'

# a and b point to the same data in memory
puts a # => 'hello Tom'
puts b # => 'hello Tom'

# reassign var
a = 'hello'
b = a
a = 'different hello'

puts a # => hello
puts b # => different hello

# methods definiton - mutate caller
arr = [1, 2, 3]

def mutate_arr(array)
  array.pop
end

p arr # => [1, 2, 3]
mutate_arr(arr)
p arr # => [1, 2]


arr = [1, 2, 3]

def mutate_arr(array)
  array[0] = 0
end

p arr # => [1, 2, 3]
mutate_arr(arr)
p arr # => [0, 2, 3]
```
