=begin
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.
You may assume that the argument will always be a valid integer that is greater than 0.

PROBLEM
input: integer
output: Array of integers (1..input)
explicit:
  write a method
  return an Array of integers, in sequence, between 1 and the input
implicit:
  input will always be greater than 0

TEST CASES
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

=end

def sequence(int)
  (1..int).to_a
end

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
