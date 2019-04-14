# Unlucky Days
# Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# loop and create all the 13th dates - for 12 months
# select the fridays
require 'date'

def friday_13th(year)
  days = []

  12.times do |month|
    days << Date.new(year, month + 1, 13)
  end

  days.select { |day| day.friday? }.size
end

# Examples:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2