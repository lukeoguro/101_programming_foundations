=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

PROBLEM:
input: integer (+)
output: integer (sum of digits in input)
explicit:
  write a method
  returns the sum of its digits
implicit:
  not use any looping mechanisms

TEST CASES
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

DATA STRUCTURE
input: integer (+)
inter: integer -> string. implicitly convert to array (elements: strings (char))
output: integer

ALGORITHM
Given integer `int`
Call `#to_s` method
call `#chars` method
call the `#reduce` method with a block
  Block takes sum and char.
  Convert char to integer and add to sum
=end

def sum(int)
  int.to_s.chars.reduce(0) { |sum, char| sum + char.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45