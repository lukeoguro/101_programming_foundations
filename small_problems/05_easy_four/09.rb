=begin
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers.
In this exercise and the next, you're going to reverse those methods.
Write a method that takes a positive integer or zero, and converts it to a string representation.
You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc.
Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

PROBLEM
input: integer
output: string (representing the integers)

TEST CASE
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

DATA STRUCTURE
input: integer
inter: hash that converts 4 => '4'
output: string

ALGORITHM
Given an input integer `integer`
Create an hash called `conversion`
Init empty string `string`
Iterate (#until) integer == 0
  string << conversion[integer % 10]
  integer / 10
End iteration
string.reverse
=end

CONVERSION = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"}

def integer_to_string(integer)
  string = ''
  loop do
    string << CONVERSION[integer % 10]
    integer /= 10
    break if integer == 0
  end
  string.reverse
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'