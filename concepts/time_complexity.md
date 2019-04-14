# Algorithm efficiency and time complexity

Check if a collection of strings contains a certain string(like a film title inside a film titles list)

## Linear complexity - O(n) - big O of n

- O(n) efficiency denpends on the size of n, bigger the n lower the algorithm performance

```ruby

film_titles = %w(Thrones Dracula NFS Godfather Scarface)
film_to_find = 'Thrones'
iteration_counter = 0

for film_title in film_titles do
  return 1 if film_title == film_to_find
  iteration_counter += 1
end

p iteration_counter

# if the film is Thrones the the for loop will only loop once
# if the film is NFS - 3 iterations
# if the film is unknown - film_titles.size iterations
# the bigger the film_list(or n) is, the less efficient is the algorithm
```

## Constant complexity - O(1) - big O of 1

- O(1) will have the same performance no matter how big the collection is

```ruby
  film_titles = {
    'Game of Thrones' => 1,
    'Dracula'         => 1,
    'Need for Speed'  => 1,
    'Godfather'       => 1,
    'Scarface'        => 1
  }
  film_to_find = 'Scarface'

film_titles['Dracula'] == 1 # true
film_titles['Xyz'] == 1 # false

# the film_titles collection is a hash
# every hash key points to a bucket(location in memory)
# no matter how big the collection is, the efficiency will remain the same
# because the program will chech if the hash key points to a location in memory or not
```
