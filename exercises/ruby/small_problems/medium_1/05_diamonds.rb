# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

# create upper triangle
# iterate over range with step(2)
# define a space counter = num / 2
# subtract 1 from counter until counter is 0
# for 9
# 1 3 4 7 9 - stars
# 4 3 2 1 0 - left spaces

def triangle(num)
  counter = num / 2
  (1..num).step(2) do |n|
    puts "#{' ' * counter}#{('*' * n)}"
    counter -= 1
  end
end

# create upper triangle
# create bottom triangle

def diamond(num)
  mid = num / 2
  counter = mid
  (1..num).step(2) do |n|
    puts "#{' ' * counter}#{('*' * n)}"
    counter -= 1 if counter > 0
  end
  (2..num).step(2) do |n|
    counter += 1
    puts "#{' ' * counter}#{'*' * (num - n)}"
  end
end

# refactor
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Examples
diamond(1)

# *
diamond(3)

#  *
# ***
#  *
diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *