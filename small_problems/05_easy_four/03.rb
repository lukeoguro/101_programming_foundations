=begin
In the modern era under the Gregorian Calendar, leap years occur in every year
that is evenly divisible by 4, unless the year is also divisible by 100.
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.
Assume this rule is good for any year greater than year 0.
Write a method that takes any year greater than 0 as input,
and returns true if the year is a leap year, or false if it is not a leap year.

PROBLEM
input: integer (year greater than 0)
output: boolean (true/false based on leap year)
explicit:
  write a method
  return true if the year is a leap year
implicit:
  the input is greater than 0
  leap year is a year that is evenly divisible by 4
    unless the year is also divisible by 100
      unless the year is also divisible by 400

TEST CASES
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

BREAKDOWN
If it's divisible by 400, it is also divisible by 100 and 4
If it's divisible by 100, it is also divisible by 4

ALGORITHM
Given an integer `year`
If divisible by 400
  return leap year
elsif divisible by 100
  return not a leap year
else
  true false of divisible by 4
end

=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true