=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each
leading subsequence for that Array. You may assume that the Array always contains at least one number.

PROBLEM
input: array of numbers
output: integer (sum of sums)
explicit:
  write a method
  return the sum of the sum of each leading subsequence
implicit:
  array always contains one number

TEST CASES
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

ALGORITHM
Given an array called `array_of_numbers`
Create variable called `sum` set at 0
Loop (iterate with #times) over the length of `array_of_numbers`, where each element is `idx`
  Add `array_of_numbers[(0..idx)].sum` to `sum`
End loop
return `sum`

=end

def sum_of_sums(array_of_numbers)
  sum = 0
  array_of_numbers.size.times do |idx|
    sum += array_of_numbers[0..idx].sum
  end
  sum
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
