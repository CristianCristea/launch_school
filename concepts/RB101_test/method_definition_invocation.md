# Method definition and method invocation

## Method definition

- when you define or create a method using the `def..end` construction
- creates own local scope
- return value - implicit - the value to which the expression on last line evaluates to
- or explicit using `return` keyword
- uses parameters to access data outside of its scope
- can define default parameters
- can mutate objects outside of its scope

```ruby
  def test_method(a) # def keyword, method name, parameters
    # body
  end #  end keyword
```

- can interact with a block if passed at method invocation
- use 'yield' keyword to interact with a block
- the block can acceess the local variable, so the local variable is available inside the method

```ruby
word = "Hello"

def greeting
  yield
  puts "Goodbye"
end

greeting do
  puts word
end
```

## Method invocation

- referencing a method name is called method invocation
- a block is part of the method invocation. In fact, method invocation followed by curly braces or do..end is the way in which we define a block in Ruby.
- blocks act like arguments to the method
- method invocation uses the scope set by the method definition
