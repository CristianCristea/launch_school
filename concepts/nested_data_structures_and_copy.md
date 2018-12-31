# Nested data structures

- data structures like arrays or hashes can be nested

```ruby
arr1 = [[1, 2], [3, 4]]
arr2 = [{a: 1}, {b: 2}]
hash = {test: [1, 2]}

# access
arr1[0][0] # => 1

# update
arr1[0] = 'test' # => arr1 = ['test', [3, 4]]
arr1[0][1] = 'A' # => arr1 = ['tAst, [3, 4]]
```

## Shallow copy

### #dup

- will copy the object upon it is called
- will **share** the inner collection if there is one
- when you modify the inner collection of the copy the original object will also change

```ruby
# #dup
arr1 = ['a', 'b', 'c']
arr2 = arr1.dup

arr2[1].upcase!

arr2 # => ["a", "B", "c"]
arr1 # => ["a", "B", "c"]
```

### #clone

- clone works like #dup
- the difference is that #clone will freeze the copy
- freeze an object means you can't add new elements to it **but you can change the value of the object**
- like constants in JS

```ruby
arr1 = ["a", "b", "c"].freeze
arr2 = arr1.clone
arr2 << "d"
# => RuntimeError: can't modify frozen Array

arr = [[1], [2], [3]].freeze
arr[2] << 4
arr # => [[1], [2], [3, 4]]
```

- **when you modify the inner collection of the copy by referencing the elements directly, the original will be modified**
- **when you modify the inner collection itself, the original array is not modified**

```ruby
# A
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

# by changing the Array not the elements specifically, only changes the copy even with ! distructive methods
arr1 # => ["a", "b", "c"]
arr2 # => ["A", "B", "C"]

# B
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

# by changing the elements inside, we change both Arrays
arr1 # => ["A", "B", "C"]
arr2 # => ["A", "B", "C"]
```
