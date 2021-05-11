=begin
Write a method that takes a string argument, and returns true if all of the alphabetic characters
inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

PROBLEM
input: string
output: boolean
explicit:
  write a method
  return true if all of the alphabetic characters are uppercase
implicit:
  ignore non-alphabetic characters
  If string is empty, return true

TEST CASES
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

=end

def uppercase?(string)
  string.upcase == string
end

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true