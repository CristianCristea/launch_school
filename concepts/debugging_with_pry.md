# Debugging

Bugs are human errors in code
Debugging is the process of identifying and fixing those errors

## Debug

1. Identify the problem
2. Understand the problem
3. Implement a solution

## Types of error

1. Syntax Errors
2. Logical Errors

## pry

- is a ruby gem, gem install pry
- is a REPL - Read-Evaluate-Print Loop

### pry REPL

- to start a pry session type **pry** in the terminal
- similar to irb, but with more features
- you can change scope with **cd**
- list all available context methods with **ls**
- call methods from within the context
- access documentation with show-doc method_name

```terminal
$ arr = [1, 2, 3]
$ => [1, 2, 3]
$ cd arr
$ <Array> ls
- will list all available methods
$ <Array> first
$ <Array> => 1
$ <Array> show-doc map
- shows docs for map
```

### pry at runtime with binding.pry

- require 'pry'
- type 'exit' to quit
- put binding.pry where you want the start the pry session
- binding.pry returns nil - care if you use it as the last line in a method will change the return value of the method
- binding.pry is using lexical scoping rules - if declared inside a method will only access that scope
- binding.pry is hoisting the variables - the variables declared after the binding.pry line will have the nil value
- **whereami** command inside pry session shows where the binding.pry line is, can take an argument that represents the number of lines to show **whereami 15**

## pry-byebug

- extends pry
- ability to step through and in the code with **next, step, continue**
- you have to require pry and pry-byebug
- use the binding.pry where you want to start
- with **step** you can step in a method

```ruby
arr = [1, 2, 3]

def double(n)
  n * 2
end

# with step you can step in the double method if the binding.pry is inside of map method.
arr.map { |n| double(n) }
```
