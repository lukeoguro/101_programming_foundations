=begin
Create a method that takes two integers as arguments. The first argument is a count,
and the second is the first number of a sequence that your method will create.
The method should return an Array that contains the same number of elements as the
count argument, while the values of each element will be multiples of the starting number.
You may assume that the count argument will always have a value of 0 or greater, while the
starting number can be any integer value. If the count is 0, an empty list should be returned.

PROBLEM
input (2): integers (count; first number)
output: an Array of integers (`count` multiples of the starting number)
explicit:
  write a method
  return an Array that contains `count` multiples of the starting number
implicit:
  count argument is greater or equal to 0
  starting number is any integer
  if the count is zero, an empty list should be returned

TEST CASES
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

BREAKDOWN
sequence(count, starting_number)
-7 x 1 = -7
-7 x 2 = -14
-7 x 3 = -21
-7 x 4 = -28

ALGORITHM
Given two integers called `count` and `starting_number`
Create an empty array called `multiples`
Loop (iterate with #step) from 1 to `count`, with index called `multiple`
  Append `multiple` * `starting_number` to `multiples`
End loop
Return `multiples`

=end

def sequence(count, starting_number)
  multiples = []
  1.step(count) do |multiple|
    multiples.append(multiple * starting_number)
  end
  multiples
end

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []