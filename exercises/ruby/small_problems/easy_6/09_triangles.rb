# Right Triangles
# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# iterate num times
# put a string on each iteration

num = 5
" " * 4 "*" * 1
" " * 3 "*" * 2
" " * 2 "*" * 3
" " * 1 "*" * 4
" " * 0 "*" * 5

def triangle(num)
  num.times do |n|
    line_number = n + 1
    puts " " * (num - line_number) + "*" * line_number
  end
end

# Examples:
triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********