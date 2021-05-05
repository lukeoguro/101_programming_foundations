=begin
Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.
New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

PROBLEM
input: integer (year)
output: string (string representation of century number)
explicit:
  write a method
  return a string that begins with the century number, nd ends with the appropriate ordinal indicator
implicit:
  new centuries begin in years that end with 01 (ex: 1901-2000 is the 20th century)
  a century is 100 years

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
century, remainder = year.divmod(100)
if remainder is greater than 0, add 1 to century
-st: if number ends with 1 (unless tenth value is 1)
-nd: if number ends with 2 (unless tenth value is 1)
-rd: if number ends with 3 (unless tenth value is 1)
-th: else

ALGORITHM
Given an integer called `year`
Call #divmod on `year`, pass return values as `century` and `remainder`
If `remainder` is greater than 0, add 1 to `century`
return `century` + -th if century / 10 % 10 == 1
Case statement of century % 10
  when 1 then add -st
  when 2 then add -nd
  when 3 then add -rd
  else        add -th
End case statement

=end

def century(year)
  century, remainder = year.divmod(100)
  century += 1 if remainder > 0
  return "#{century}th" if century / 10 % 10 == 1
  case century % 10
  when 1 then "#{century}st"
  when 2 then "#{century}nd"
  when 3 then "#{century}rd"
  else        "#{century}th"
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
