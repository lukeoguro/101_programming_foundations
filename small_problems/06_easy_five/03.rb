=begin
As seen in the previous exercise, the time of day can be represented as the number of minutes
before or after midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.
Write two methods that each take a time of day in 24 hour format,
and return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.
You may not use ruby's Date and Time methods.

PROBLEM
input: string ('hh:mm')
output: integer (range 0..1439)
explicit:
  write two methods
  return the number of minutes before or after midnight
implicit:
  We cannot use the Date and Time methods
  Return a value in the range of 0..1439

TEST CASES
after_midnight('00:00') == 0      # 12 * 0 + 0
before_midnight('00:00') == 0     # 1440 - (12 * 0 + 0)
after_midnight('12:34') == 754    # 12 * 60 + 34
before_midnight('12:34') == 686   # 1440 - (12 * 60 + 34)
after_midnight('24:00') == 0      # 24 * 60 + 0 (special case, not in range)
before_midnight('24:00') == 0     # 1440 - (24 * 60 + 0)

ALGORITHM (after_midnight)
Given a string called `time_of_day`
Set minutes equal to (time_of_day[0,2].to_i * 60) + time_of_day[3,2].to_i
Return minutes % 1440

ALGORITHM (before_midnight)
Given a string called `time_of_day`
minutes equals to 1440 - #after_midnight(time_of_day)
Return minutes % 1440

=end

def after_midnight(time_of_day)
  minutes = time_of_day[0,2].to_i * 60 + time_of_day[3,2].to_i
  minutes % 1440
end

def before_midnight(time_of_day)
  minutes = 1440 - after_midnight(time_of_day)
  minutes % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
