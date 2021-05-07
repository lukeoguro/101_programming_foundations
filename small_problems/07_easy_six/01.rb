=begin
Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
and returns a String that represents that angle in degrees, minutes and seconds.
You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes,
and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

PROBLEM
input: integer (angle between 0 and 360)
output: string (represents an angle)
explicit:
  write a method
  return a string that represents the angle in degrees, minutes, and seconds
implicit:
  symbol ° to represent degrees
  symbol ' to represent minutes
  symbol " to represent seconds
  a degree has 60 minutes
  a minute has 60 seconds

TEST CASES
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

BREAKDOWN
degrees, degrees_remainder = (76.73).divmod(1)
minutes, minutes_remainder = (degrees_remainder * 60).divmod(1)
seconds = (minutes_remainder * 60).round

=end

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees, degrees_remainder = angle.divmod(1)
  minutes, minutes_remainder = (degrees_remainder * 60).divmod(1)
  seconds = (minutes_remainder * 60).round
  "#{degrees}#{DEGREE}#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
