=begin
The time of day can be represented as the number of minutes before or after midnight.
If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.
Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
Your method should work with any integer input.
You may not use ruby's Date and Time classes.

PROBLEM
input: integer (minute-based time)
output: string (hh:mm)
explicit:
  write a method
  returns the time of day in 24 hour format (hh:mm)
implicit:
  this should work with any integer input
  we may not use the Date and Time classes
  if the input is positive, the time is after midnight
  if the input is negative, the time is before midnight

TEST CASES
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

BREAKDOWN
1440 is total minutes in a day
convert all numbers past 1440 to modulo (%=)
  this implicitly convert all negative integers to positive: ex, -1437 is the same as 3 (1440 - 1437)
call #divmod(60) onto number, where quotient is the number of hours and modulo is the number of minutes

ALGORITHM
Given integer `minutes`
minutes %= 1440
hh, mm = minutes.divmod(60)
return in correct format

=end

def time_of_day(minutes)
  minutes %= 1440
  hh, mm = minutes.divmod(60).map { |el| el.to_s.rjust(2, "0") }
  "#{hh}:#{mm}"
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"




