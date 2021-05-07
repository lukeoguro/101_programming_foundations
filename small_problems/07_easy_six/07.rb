=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
that contain the first half and second half of the original Array, respectively. If the original array
contains an odd number of elements, the middle element should be placed in the first half Array.

PROBLEM
input: Array
output: Array (within it, two nested Arrays)
explicit:
  write a method
  return two Arrays as a pair of nested arrays, that contain the first and second half of the original array
implicit:
  If the array contains an odd number of elements, the middle element should be placed in the first half of the Array

TEST CASES
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

BREAKDOWN
midpoint = (array.length / 2.0).round
first_half = array[0...midpoint]
second_half = array[midpoint..-1]

=end

def halvsies(array)
  midpoint = (array.length / 2.0).round
  [array[0...midpoint], array[midpoint..-1]]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]