=begin
Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

PROBLEM
input: string
output: string (reverse order of input string)
explicit:
  write a method
  return a new string with the words in reverse order
implicit:
  if input is an empty string, return the empty string
  what is a word? (separated by spaces)
  Will there be whitespace before or after the string

TEST CASES
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

DATA STRUCTURE
input: string
inter: array (element: strings (words))
output: string (reversed by words)

ALGORITHM
Given input string `str`
Call `String#split` method, which will split by whitespace into array
Call `Array#reverse` method, and then call `Array#join(' ')`
=end

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
