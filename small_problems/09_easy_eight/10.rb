=begin
Write a method that takes a non-empty string argument, and returns the middle character
or characters of the argument. If the argument has an odd length, you should return exactly
one character. If the argument has an even length, you should return exactly two characters.

PROBLEM
input: string (non-empty)
output: string (1 or 2 characters)
explicit:
  write a method
  return the middle character or characters of the input
    if the argument is odd in length, it should return 1 character
    if the argument is even in length, it should return 2 characters
implicit:
  input string is non-empty

TEST CASES
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

BREAKDOWN
If length is odd, index is `length / 2`
If length is even, index is `(length-1..length)`

ALGORITHM
Given an string called `string`
Create variable called `length` set to `string.length`
If `length` is odd?
  Return character at `length / 2`
Else
  Return characters at `(length-1..length)`
End if statement

=end

def center_of(string)
  length = string.length
  length.odd? ? string[length / 2] : string[length/2-1..length/2]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'

