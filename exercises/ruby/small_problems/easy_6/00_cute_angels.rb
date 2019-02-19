# Cute angles
# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# input - number - float between 0-360
# output- string - degrees, minutes and seconds

# convert the floating point number to degrees, minutes, seconds
# 1 deg = 60 min, 1 min = 60 s
# angle.floor = degrees
# ((angle - degrees) * 60) = minutes
# (((angle - degrees) * 60) - minutes) * 60 = seconds

# You may use this constant to represent the degree symbol:
# degree symbol
DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.floor
  minutes = ((angle - degrees) * 60).floor
  seconds = ((((angle - degrees) * 60) - minutes) * 60).floor

  "#{degrees}#{DEGREE}#{ "%02d" % minutes}'#{ "%02d" % seconds}\""
end

# refactor return value
def dms(angle)
  degrees = angle.floor
  minutes = ((angle - degrees) * 60).floor
  seconds = ((((angle - degrees) * 60) - minutes) * 60).floor

  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


# Examples:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°35'59")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
p dms(420)