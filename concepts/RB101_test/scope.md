# Variable scope

1. what is variable scope?

Variable scope:

- determines where in the program a variable is available
- is defined by where a variable is initialized
- is defined by a block

**block - a pice of code following a method invocation delimited by {} or do/end**

2. Inner scope can access variables initialized in outer scope, but not vice-versa

3. Method invocation with a block

- the block following a method invocation is actually an argument passed to the method
- a variable initialized outside the block is accessible inside the block
- a variable initialized inside the block is not available outside the block

**a block and implicitly a new scope is created ONLY if the {} or do/end follows a method invocation**

```ruby
# examples of method invocation with a block
# creates a new scope
3.times {}
arr.each {}
loop do

end

# not a method invocation
# does not create a new scope
for a in arr do

end
```

4. variable shadowing

- if the outer and inner scope have a variable with the same name, the inner scope can't access the variable from the outer scope

```ruby
n = 10

[1, 2, 3].each do |n|
  puts n
end
```

5. method definition and local variable scope

- method definition creates own scope
- local variables initialized outside the method definition are not available inside
- local variables within can't access data outside the method definition
- method definition uses parameters to access data outside own scope

```ruby
a = 2

def check_a(a)
  a = 4
end

puts check_a(a) # => 4
puts a # => 2
```
