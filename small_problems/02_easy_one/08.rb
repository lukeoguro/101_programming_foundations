=begin
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array.
The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

PROBLEM
input: array (elements: integers)
output: integer (average)
explicit:
  write a method
  return the average of all numbers as an integer
  array will never be empty
  numbers will always be positive
implicit:
  round up? round down?

TEST CASE
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

DATA
input: array (elements: integers)
inter: integer (sum; length)
output: integer (average)

ALGORITHM
Given an array of integers called `numbers`
Get the sum of the numbers
Get the length (size) of the numbers
Divide sum by length, and return

=end

def average(numbers)
  numbers.sum / numbers.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40