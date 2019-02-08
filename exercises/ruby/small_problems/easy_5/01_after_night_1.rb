# After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.
# Disregard Daylight Savings and Standard Time and other complications.

# input - integer
# output - string representing the minutes past midnight or the time to minutes
# MINUTES_PER_DAY = 1440
# if + get hours and minutes and display them


require 'pry'
MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

# def display_time(time_string)
#   hours_minutes = time_string.split(':')
#   format_time = hours_minutes.map do |string|
#     string.length == 1 ? string.prepend('0') : string
#   end

#   format_time.join(':')
# end

# def time_of_day(integer)
#   return "00:00" if integer == 0

#   after_midnight = integer > 0
#   initial_minutes = integer.abs
#   days = (initial_minutes / MINUTES_PER_HOUR) / HOURS_PER_DAY
#   hours = 0
#   minutes = 0

#   if after_midnight
#     minutes = integer % MINUTES_PER_HOUR
#     hours = days < 1  ? initial_minutes / MINUTES_PER_HOUR : (initial_minutes - (days * MINUTES_PER_DAY)) / MINUTES_PER_HOUR
#   else
#     minutes = MINUTES_PER_HOUR - (initial_minutes % MINUTES_PER_HOUR)
#     hours = days < 1  ? 23 - (initial_minutes / MINUTES_PER_HOUR) : 23 - ((initial_minutes - (days * MINUTES_PER_DAY)) / MINUTES_PER_HOUR)
#   end

#   if minutes == MINUTES_PER_HOUR
#     hours += 1
#     minutes = 0
#   end
#   display_time("#{hours}:#{minutes}")
# end

# refactor

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  binding.pry
  format('%2d:%2d', hours, minutes)
end

# Examples:
p time_of_day(0) # == "00:00"
p time_of_day(35) # == "00:35"
p time_of_day(800) # == "13:20"
p time_of_day(3000) # == "02:00"
p time_of_day(-3000) # == "22:00"
p time_of_day(-3) # == "23:57"
p time_of_day(-1437) # == "00:03"
p time_of_day(-4231) # == "01:29"