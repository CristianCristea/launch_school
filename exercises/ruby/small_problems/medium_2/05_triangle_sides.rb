# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# input 3 numbers, integer or float
# output a symbol
# return the type of triangle that can be formed from the input based on some conditions

# check if is a triangle a,b,c > 0 and a + b > c - return :invalid
# check the other conditions
# a == b and a == c : equilateral
# a == b and a != c :isosceles
# else scalene

def triangle(a, b, c)
  sorted_triangle_sizes = [a, b, c].sort
  return :invalid if sorted_triangle_sizes.include?(0) || sorted_triangle_sizes[0] + sorted_triangle_sizes[1] < sorted_triangle_sizes[2]

  return :equilateral if a == b && a == c
  return :isosceles if a == b && a != c
  return :scalene
end

# Examples:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid