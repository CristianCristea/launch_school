# When will I Retire?
# Build a program that displays when the user will retire and how many years she has to work till retirement.

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age will you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
retirement_year = current_year + retirement_age - age
years_to_work = retirement_year - current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_work} of work to go!"