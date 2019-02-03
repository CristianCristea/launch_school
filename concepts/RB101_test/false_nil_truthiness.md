# Truthiness

- means that an expression will evaluate to true
- in Ruby just `false` and `nil` will evaluate to false - they are falsy not false
- all other objects evaluate to true - they are truthy - not true

```ruby
  a = 0
  puts 'truthy' if a # => truthy

  a = false
  puts 'truthy' if a # => nil - evaluates to falsy and puts is not executed

  a = nil
  if a
    puts 'truthy'
  else
    puts 'falsy'
  end
  # 'falsy'

 a = 'a'
  puts 'truthy' if a # => truthy

  a = true
  puts 'truthy' if a # => truthy

```
