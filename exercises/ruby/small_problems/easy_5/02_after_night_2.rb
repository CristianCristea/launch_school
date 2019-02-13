# After Midnight (Part 2)
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.
# Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though; it makes the problem more interesting.

# split the string at :
# if hours == 24 then hours = 0
# convert the hours to minutes
# add the minutes

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time)
  time_units = time.split(':').map(&:to_i)
  time_units[0] = time_units[0] == 24 ? 0 : time_units[0] * MINUTES_PER_HOUR

  # time_units[0] + time_units[1]
  time_units.reduce(:+)
end

def before_midnight(time)
  time_units = time.split(':').map(&:to_i)
  time_units[0] = time_units[0] == 24 ? 0 : time_units[0] * MINUTES_PER_HOUR

  time_units[0] == 0 ? 0 : MINUTES_PER_DAY - time_units.reduce(:+)
end

# refactor
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

# Examples:
p after_midnight('00:00') == 0
p after_midnight('24:00') == 0
p after_midnight('12:34') == 754
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0