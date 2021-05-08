=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together,
divides the result by the number of entries in the Array, and then prints the result rounded
to 3 decimal places. Assume the array is non-empty.

PROBLEM
input: Array of integers
output: print to screen the average
explicit:
  write a method
  multiply all numbers, divide by the number of entries, and print result rounded to 3 decimals to screen
implicit:
  array is non-empty

TEST CASES
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

ALGORITHM
Given an array called `array_of_integers`
Assign variable `result` to `array_of_integers.inject(:*) / array_of_integers.size.to_f`
Print to screen: "The result is #{format("%.3f", result)}"

=end

def show_multiplicative_average(array_of_integers)
  result = array_of_integers.inject(:*) / array_of_integers.size.to_f
  puts "The result is #{format("%.3f", result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667