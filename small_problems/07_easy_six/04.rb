=begin
Write a method that takes an Array as an argument, and reverses its elements in place;
that is, mutate the Array passed into this method. The return value should be the same Array object.

PROBLEM
input: Array
output: Array (same Array; reverse elements)
explicit:
  write a method
  reverse the order of elements of input Array, and return the same Array object
implicit:
  You may not use Array#reverse or Array#reverse!

TEST CASES
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

BREAKDOWN
array.insert(index, array.pop)

=end

def reverse!(array)
  (0...array.size).each { |idx| array.insert(idx, array.pop) }
  array
end

list = [1,2,3,4]
result = reverse!(list)

puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts reverse!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts reverse!(list) == [] # true
puts list == [] # true