# Seeing Stars
# Write a method that displays an 8-pointed star in an n x n grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.


# +    +    +   # 3 stars 4 space between => 11 - 3 = 8 spaces => 8 / 2
#  +   +   +    # 1 space 3 stars 3 spaces between 1 space
#   +  +  +     # 2 spaces 3 stars 2 spaces betwenn 2 spaces
#    + + +      # 3 spaces 3 stars 1 space between 3 spaces
#     +++       # 4 spaces 3 stars 0 spaces between 4 spaces
# +++++++++++   # 11 stars

# output line by line
# init mid_counter = (n - 3)  / 2  -> 3 is the star number
# init space and star chars
# iterate n / 2 times
# construct the line
# output margin_counter * space + star + mid_counter * space + star + mid_counter * space + star
# output n stars
# iterate n / times
# build the string
# space * counter << star << space * iteration_counter << space << space << space * counter




def star(num)
  star_number = 3
  star = '*'
  space = ' '
  counter = (num - star_number) / 2
  iterations = num / 2

  # upper triangle
  iterations.times do |i|
    line = "#{space * i}#{star}#{space * counter}#{star}#{space * counter}#{star}"
    puts line
    counter -= 1
  end

  # mid
  puts star * num

  # lower triangle
  counter = (num - star_number) / 2
  iterations.times do |i|
    line = "#{space * counter}#{star}#{space * i}#{star}#{space * i}#{star}"
    puts line
    counter -= 1
  end
end

# refactor
# calculate spaces
# join the array with the spaces between
# use String#center method to center the figure
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Examples

star(11)

# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *
# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
