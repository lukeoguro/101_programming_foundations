=begin
Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.
New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

PROBLEM
input: integer (year)
output: string (century number + appropriate string value)
explicit:
  write a method
  return a string that begins with the century number and ends with the appropriate string
implicit:
  each century begins with '01'. (ex: years 1901-2000 -> 20th century)
  what is the range of the years?
  can we assume that the integer is positive?
  what is a century? (100 years)

TEST CASES
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

BREAKDOWN
1-100 -> 1st century
101-200 -> 2nd century
201-300 -> 3rd century

DATA STRUCTURE:
input: integer (year)
inter: NA
output: string

ALGORITHM
Given an integer (`year`)
Call `#divmod` onto `year` with argument 100, and assign results to `century`, `remainder`
If `remainder` greater or equal to 1, add 1 to `century`
If `century` % 100 / 10 is equal to 1: "#{century}th"
Case statement `century` % 10
  when 1 then: "#{century}st"
  when 2 then: "#{century}nd"
  when 3 then: "#{century}rd"
  else then:   "#{century}th"
end

=end

def century(year)
  century, remainder = year.divmod(100)
  century += 1 if remainder >= 1
  return "#{century}th" if century % 100 / 10 == 1
  case (century % 10)
  when 1 then "#{century}st"
  when 2 then "#{century}nd"
  when 3 then "#{century}rd"
  else "#{century}th"
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
