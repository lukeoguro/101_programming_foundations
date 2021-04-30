=begin
Write a method that takes one argument, a positive integer,
and returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

PROBLEM
input: integer (+)
output: string (alternating 1s and 0s)
explicit:
  write a method
  return a string of alternating 1s and 0s
  the string always starts with 1s
  the length of string should match the given integer
implicit:
  NA

TEST CASES
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

DATA STRUCTURE
input: integer (+)
inter: NA
output: string

ALGORITHM
Given an integer `length`
Initialize empty string called `return_str`
Loop `length` amount of times (iteration with times: i)
  If i is even:
    append 1 to the `return_str`
  else:
    append 0
  end
end
Return `return_str`
=end

def stringy(length)
  return_str = ''
  length.times do |i|
    if i.even?
      return_str << '1'
    else
      return_str << '0'
    end
  end
  return_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'