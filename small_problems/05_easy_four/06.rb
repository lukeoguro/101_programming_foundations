=begin
Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
and each element has the running total from the original Array.

PROBLEM
input: Array of integers
output: Array of integers (running total)
explicit:
  write a method
  return a new array with the same number of elements, which each element showing the running total
implicit:
  running total: sum up til this point

TEST CASES
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

ALGORITHM
Given an array called `numbers`
Create variable  `running_total` set to 0
Create an array `return_array` set to []
Iterate (#each) on `numbers`, where each element is `num`
  `running_total` += `num`
  `return_array` << `running_total`
End Iteration
return `return_array`

=end

def running_total(numbers)
  running_total = 0
  return_array = []
  numbers.each do |num|
    running_total += num
    return_array << running_total
  end
  return_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

