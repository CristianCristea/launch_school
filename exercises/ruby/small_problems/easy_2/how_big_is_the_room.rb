# How big is the room?
# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

puts "Enter the length of the room:"
length = gets.chomp.to_f

puts "Enter the width of the room:"
width = gets.chomp.to_f

area = (width * length).round(2)
area_feet = (area * 10.7639).round(2)
puts area
puts area_feet