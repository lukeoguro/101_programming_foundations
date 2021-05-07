=begin
Write a method that takes an Array, and returns a new Array with the elements of
the original list in reverse order. Do not modify the original list.

PROBLEM
input: Array
output: new Array
explicit:
  write a method
  return a new Array with elements of the original Array in reverse order
implicit:
  Do not modify the original list

TEST CASES
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

ALGORITHM
Given an array called `original_array`
Create an empty array called `reversed_array`
Loop (iteration with #each) on `original_array`, where each element is `el`
  Prepend `el` onto `reversed_array`
End loop
Return `reversed_array`

=end

def reverse(original_array)
  reversed_array = []
  original_array.each { |el| reversed_array.prepend(el) }
  reversed_array
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
