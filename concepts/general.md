# Topics

# Object id

- Every named entity in Ruby has an object_id. This is a unique identifier for that object.

## Abstraction in computer science

- the act of representing essential features without including the background details
- used to reduce complexity

## Variable scope

- determines where in the program a variable is accessible
- is determined by where the variable is initialized
- the variable scope is defined by a **block**
- a block is a piece of code following a method invocation usually
  contained between **do/end or {}**
- inner scope can access variables initialized in outer scope but not vice versa
- **if a method and a local variable have the same name, ruby tries to access the local variable first if it can't then invokes the method**

### Local variables

Block:

- initialized outside a block is available inside a block
- initialized inside a block is available only inside the block

Method definition:

- initialized outside a method definition is not available inside the method definition
- initialized inside a method definition is not available outside the method definition
- arguments are scoped at method definition level - not available outside

```ruby
# block level
string = 'outer scope'

10.times do
  arr = [1,2,3]
  puts string # outer scope
end

print arr # NameError

# method level

def print(word)
  puts word
  puts string # NameError
end

print('test')
# test
# NameError
```

### Variable shadowing

- when a inner scope variable has the same name with a variable from outer scope
- the outer scope variable will not be accessible

```ruby
string = 'outer scope'
counter = 0

loop do
  string = 'inner scope'
  puts string # inner scope
  break if counter > 5
  counter += 1
end
```

## Mutate caller

- alter the argument permanently
- some methods can mutate the caller (Array#pop, String.reverse!)
- read documentation to check if a method mutates the caller

## Variables as pointers

- variables are pointers to physical space in memory

```ruby

```

## truthines

- in Ruby only `nil` and `false` evaluates to false
- everything else evaluates to true

## implicit return values of method invocations

- the method invocation will implicitly return the last line from the method definition

## method definition and invocation

- method definition can't directly access a local variable initialized outside of the method definition
- method definition can't change or reassign a local variable initialized outside
- a block can access and modify a local variable initialized outside
- method definition can access local variables defined outside through interaction with blocks

## pass an object as argument to a method

- remember that in Ruby, what gets passed in the parameter list is not what it appears.
- under the hood, ruby passes the object id of each item rather than the value of the parameter.
- the method internally stores these object id's in locally scoped variables (named per the method definition's parameter list).
