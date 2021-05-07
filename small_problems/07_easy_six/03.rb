=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition,
and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.
Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate.
For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
especially considering that it takes 6 iterations before it generates the first 2 digit number.
Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits
specified as an argument. (The first Fibonacci number has index 1.)

PROBLEM
input: integer (number of digits in number)
output: integer (index of first Fibonacci number with the number of digits from input)
explicit:
  write a method
  return the index of the first Fibonacci number that has the number of digits specified in the argument
implicit:
  Fibonacci series is a series of number (1, 1, 2, 3, 5, 8, 13, 21, ...)

TEST CASES
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

ALGORITHM
Given an integer called `length_of_digits`
Create a variable called `previous_two_numbers` set to [1, 1]
Create a variable `counter` set to 3
Start a loop
  Create a variable called `current_number` equal to sum of `previous_two_numbers`
  If `current_number.to_s.length` == `length_of_digits`
    Return `counter`
  Add 1 to `counter`
  `previous_two_numbers`[0], `previous_two_numbers`[1] = `previous_two_numbers`[1], `current_number`
End loop

=end

def find_fibonacci_index_by_length(length_of_digits)
  previous_two_numbers = [0, 1]
  counter = 2
  loop do
    current_number = previous_two_numbers.sum
    return counter if current_number.to_s.length == length_of_digits

    counter += 1
    previous_two_numbers[0], previous_two_numbers[1] = previous_two_numbers[1], current_number
  end
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
