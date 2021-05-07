=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

PROBLEM
input (2): Array
output: Array (merged input arrays)
explicit:
  write a method
  return an Array that contains all of the values from the input arrays
implicit:
  no duplication of values in the returned Array

TEST CASE
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

ALGORITHM
Given two input arrays called `array1` and `array2`

=end

def merge(array1, array2)
  array1.concat(array2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
