=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of each pair of numbers from the arguments
that have the same index. You may assume that the arguments contain the same number of elements.

PROBLEM
input (2): array of integers
output: a new array (product of each number pair)
explicit:
  write a method
  return a new Array that contains the product of each pair of numbers
implicit:
  the input arrays have the same number of elements

TEST CASES
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

ALGORITHM
Given two arrays called `array1` and `array2`
Create a new empty array called `return_array`
Loop (iterate with #times) over `array1.size`, where the index is `idx`
  return_array[idx] = array1[idx] * array2[idx]
End loop
Return `return_array`

=end

def multiply_list(array1, array2)
  return_array = []
  array1.size.times do |idx|
    return_array[idx] = array1[idx] * array2[idx]
  end
  return_array
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
