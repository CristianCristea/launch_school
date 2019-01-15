# Sorting

- order the elements in a collection based on a criterion

- usually sorting is performed on arrays
- a string can be converted to an array, sorted and back
- as of Ruby 1.9 the hashes keep order of added elements, but usually the hash elem are accessed with the key value
- Ruby has `#sort and #sort_by` methods

## Comparison

- **the objects being compared need to implement a <=> method in order for these methods to be used.**

### The spaceship operator <=>

- performs comparison between 2 objects of the same type
- returns -1, 0, 1 if the first object is less, equal or greater then the second
- returns nil if 2 objects can't be compared
- the return value of <=> method is used by `sort` to change the element position or not.
- if <=> returns nil `sort` will throw an Argument error
- the <=> method is implemented differently by every class

```ruby
3 <=> 1 # => 1
1 <=> 3 # => -1
2 <=> 2 # => 0
'b' <=> 'a' # => 1
'a' <=> 'b' # => -1
'b' <=> 'b' # => 0
1 <=> 'a' # => nil
```

- the sort method actually only needs about the return values of -1, 0, 1

```ruby
[2,3,5,1,0]. sort
# or
[2,3,5,1,0]. sort do |a, b|
  a <=> b
end
```

- the sort_by method is similar with sort but usually called with a block
- sort_by always returns an array

```ruby
people = { Kate: 27, john: 25, Mike:  18 }

people.sort_by do |name, age|
  age
end
# => [[:Mike, 18], [:john, 25], [:Kate, 27]]
# can call #to_h on it to convert back to hash
```
