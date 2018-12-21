# Coding tips

- use descriptive names, name your methods from the perspective of using them later

user_input not ui or u_i
ace = find_ace(cars) **not** ace = find_ace_from_cards(cards)

- use ruby naming conventions

snake_case for variables
CamelCase for classes
UPPER_CASE for constants

- CONSTANTS should be immutable

do not mutate constants

- don't display something to the output and return a meaningful value.

Since Ruby always returns a value, the key here is that the return value shouldn't be the intent of the method.

- the method should return a value with no side effects or perform side effects with no return value. **not both**
- methods should be at the same level of abstraction

deal()
hit()
stay()
iterate_through_cards() - bad name do not describe implementation in the method name

- method names should reflect mutation

update_total(total, cards)

- displaying output - use names that begin with display* , print*, say\_

def welcome # bad example
puts welcom
end

- your program should probably only have one exit point, the methods should not randomly exit the program
- rely on the expression's "truthiness" directly when comparing **only false and nil evaluate to false**
- use new lines to organize code like

```ruby
name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"
```

- don't mutate the caller during iteration

```ruby
words = %w(scooby doo on channel two)
words.each {|str| words.delete(str)}
puts words.inspect        # => ["doo", "channel"]
# That is very strange -- shouldn't every element be deleted? We should be expecting an empty array, or even perhaps nil.
# The return value ["doo", "channel"] may result in some confusion, but that's expected.
# The lesson here is: don't mutate the caller during iteration
```

- you can mutate the individual elements in the collection but not the collection itself by adding or removing elements

```ruby
words = %w(scooby doo on channel two)
words.each {|str| str << '!'}
puts words.inspect        # => ["scooby!", "doo!", "on!", "channel!", "two!"]

# Note that we aren't mutating the words object.
# That is, we aren't adding to or removing elements from words.
# But we're in fact mutating each element within the words array.
```

- variable shadowing occurs when you choose a local variable in an inner scope that shares the same name as an outer scope.
- don't use assignment in a conditional

```ruby
# bad

if some_variable = get_a_value_from_somewhere
  puts some_variable
end

# good

some_variable = get_a_value_from_somewhere
if some_variable
  puts some_variable
end
```

- sometimes experienced Rubyists do this. For example, here's a while loop that iterates through a collection:

As a convention, if you must do this, wrap the assignment in parentheses.

```ruby
# The Array#shift method removes and returns the first element in the array.
# When there's nothing to remove, shift returns nil.
# This loop takes advantage of that fact to serve as the loop termination condition.
numbers = [1, 2, 3, 4, 5]

while (num = numbers.shift)
  puts num
end
```

- use underscore for unused parameters

```ruby
hash = { name: 'Cris' }
hash.each { |_, name| puts name}
```
