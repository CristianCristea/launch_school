# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# n switches connected to n lights - all initially off
# return a list with the lights that are on after n repetitions
# repetitions
# 1 all on
# 2 - 2, 4, 6 - all multiples of 2 - switch
# 3 - 3, 6, 9 - all multiples of 3 - switch
# n - all multiples of n - switch

# 1 2 3 4 5 - off
# 1 2 3 4 5 - all on
# multiples of 2 switch: 2 4 - off 1 3 5 - on
# multiples of 3 switch: 3 off 2 3 4 are now off - 1 5 on
# multiples of 4 switch: 4 off 2 3 are now off - 1 4 5 on
# multiples of 5 switch: 5 off 2 3 5 are now off - 1 4 on

# initialize an array lights - num length each elem 'off'
# map the array, with index
# if the index of the elem + 1 is a multiple of rotation switch light
# select elem that contain 'on' and return - compact

require 'pry'

def toggle_lights(num)
  lights = Array.new(num).fill(false)
  1.upto(num) do |n|
    lights.map!.with_index do |light, i|
      # puts "rotation: #{n} - index: #{i + 1} - light: #{light}"
      (i + 1) % n == 0 ? !light : light
    end
    # puts "------end rotation----"
  end

  lights.map.with_index { |light, index| (index + 1) if light }.compact
end

p toggle_lights(5)
p toggle_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
