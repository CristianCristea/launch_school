# Variables are pointers to physical space in memory

- if 2 variables have the same data doesn't mean that they point to the same space in memory
- if 2 variables point to the same data and the date is mutated, then both of them will point to the new data
- if 2 variables point to the same data and one is reassigned, then they will point to different values
- data can be mutated inside the method definition!!! - that will pemanently change the object outside the method definition

```ruby
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
