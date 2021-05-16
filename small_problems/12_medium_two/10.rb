=begin
Write a method that computes the difference between the square of the sum of the
first n positive integers and the sum of the squares of the first n positive integers.

PROBLEM
input: integer (n)
output: integer (square of the sum minus sum of the squares)
explicit:
  write a method
  compute the difference between the square of the sum and the sum of the squares

TEST CASES
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

ALGORITHM
Given an input integer called `n`
Set `square_of_sum` to `(1..n).sum**2`
Set `sum_of_squares` to `(1..n).map { |i| i**2 }.sum`
Return `square_of_sum` minus `sum_of_squares`

=end

def sum_square_difference(n)
  (1..n).sum**2 - (1..n).map { |i| i**2 }.sum
end

puts sum_square_difference(3) == 22
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150