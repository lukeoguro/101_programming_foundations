=begin
Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

PROBLEM
input: integer (+)
output: array (digits in the input integer)
explicit:
  write a method
  return a list of the digits in the number
implicit:
  NA

TEST CASES
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

DATA STRUCTURE
  input: integer
  inter: integer -> string
  output: array (elements: integers)

ALGORITHM
  Given integer `number`
  Convert `number` to string
  Call `String#chars` on string to obtain array of chars (element: string)
  Loop through char in string (transformation), element is an integer
=end

def digit_list(number)
  number.to_s.chars.map { |char| char.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

