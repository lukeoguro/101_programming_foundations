=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array
that contains all elements from both Array arguments, with the elements taken in alternation.
You may assume that both input Arrays are non-empty, and that they have the same number of elements.

PROBLEM
input (2): Arrays
output: a new Array (each element taken in alternation)
explicit:
  write a method
  return a new array that contains all elements, with each element taken in alternation
implicit:
  input arrays are non-empty
  the arrays have the same number of elements

TEST CASES
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

ALGORITHM
Given two arrays `array1` and `array2`
Create an empty array called `interleaved_array`
Loop (iteration with #times) over length of `array1`, where each element is `idx`
  Append `array1[idx]` to `interleaved_array`
  Append `array2[idx]` to `interleaved_array`
End loop
Return `interleaved_array`

=end

def interleave(array1, array2)
  interleaved_array = []
  array1.length.times do |idx|
    interleaved_array.append(array1[idx], array2[idx])
  end
  interleaved_array
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
