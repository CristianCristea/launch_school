# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# max rotation
# 7 3 5 2 9 1 == 3 2 1 5 7 9

# 7 3 5 2 9 1 - rotate first digit - 7
# 3 5 2 9 1 7 - 1 digit fixed - 3 - rotate 5
# 3 2 9 1 7 5 - 2 digits fixed - 32 - rotate 9
# 3 2 1 7 5 9 - 3 digits fixed - 321 - rotate 7
# 3 2 1 5 9 7 - 4 digits fixed - 3215 - rotate 9
# 3 2 1 5 7 9 - maximum rotation

# convert num to string, to array
# rotate num.size - times
# init result array - copy num
# mutate the result array
# on each rotation - delete the elem at the current index and push to the end


def max_rotation(num)
  result = num.to_s.chars
  result.size.times { |digit| result << result.delete_at(digit) }
  result.join('').to_i
end

# Example:
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845