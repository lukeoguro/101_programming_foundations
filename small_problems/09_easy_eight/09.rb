=begin
Write a method that takes a positive integer as an argument and returns that number with its digits reversed.
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results.
For similar reasons, the return value for our fourth example doesn't have any leading zeros.

PROBLEM
input: integer (positive)
output: integer (number with digits reversed)
explicit:
  write a method
  return input number with its digits reversed
implicit:
  Ignore leading zeros (i.e., ignore zeros if the reversed digits has zeros in the front)

TEST CASES
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

=end

def reversed_number(original_int)
  original_int.to_s.reverse.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1
