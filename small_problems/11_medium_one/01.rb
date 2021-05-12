=begin
Write a method that rotates an array by moving the first element to the end of the array.
The original array should not be modified.
Do not use the method Array#rotate or Array#rotate! for your implementation.

PROBLEM
input: Array
output: Array (rotated)
explicit:
  write a method
  return an array where the first element has been moved to the end of the array
implicit:
  don't use #rotate or #rotate!

TEST CASES
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

ALGORITHM
Given an array called `original_array`
Duplicate `original_array` and save it to variable `dup_array`
Remove first element of `dup_array` (#pop) and add to end `#append`

=end

def rotate_array(original_array)
  dup_array = original_array.dup
  dup_array.append(dup_array.shift)
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true