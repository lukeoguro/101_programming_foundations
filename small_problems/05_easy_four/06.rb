=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
and each element has the running total from the original Array.

PROBLEM
input: Array of integers
output: Array of integers (each element is the running total)
explicit:
  write a method
  return an Array with the same number of elements, and each element has the running total
implicit:
  Are we referring to integers when talking about numbers?
  Will the array always contain numbers?

TEST CASES
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

DATA STRUCTURE
input: Array of integers
inter: variable to store running total
output: Array of integers

ALGORITHM
Given an array `original_array`
Create an variable `running_total` set to 0
Loop (transformation with `#map`) on `original_array`, where each element is `number`
  Add number to running total
  Call `running_total`
End loop

=end

def running_total(original_array)
  running_total = 0
  original_array.map do |number|
    running_total += number
  end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
