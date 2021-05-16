=begin
Write a method that returns the number of Friday the 13ths in the year given by an argument.
You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern
Gregorian Calendar) and that it will remain in use for the foreseeable future.

PROBLEM
input: integer (year)
output: integer (number of Friday the 13ths)
explicit:
  write a method
  return the number of Friday the 13ths in the input year
implicit:
  year is greater than 1752 and will be Gregorian for the forseeable future

TEST CASES
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

=end

require 'Date'

def friday_13th(year)
  (1..12).count { |month| Date.new(year, month, 13).cwday == 5 }
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2