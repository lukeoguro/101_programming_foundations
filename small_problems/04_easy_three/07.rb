=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

PROBLEM
input: Array (element: integers)
output: a new array (element: integers)
explicit:
  write a method
  return a new array with those values 1,3,5,... (every other number) (index is odd)
implicit:
  Will the array always have elements? not necessary.
  Should we return a new array? (assuming yes)

TEST CASES
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

DATA STRUCTURE
input: array
output: new array

ALGORITHM
given array `arr`
create an empty array called `return_arr`
Loop (iteration) through elements in `arr` with `index` (#each_with_index)
  if `index` is even?: append element to `return_arr`
end

=end

def oddities(arr)
  return_arr = []
  arr.each_with_index do |num, idx|
    return_arr << num if idx.even?
  end
  return_arr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
