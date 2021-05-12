=begin
Write a method that can rotate the last n digits of a number.
Note that rotating just 1 digit results in the original number being returned.
You may use the rotate_array method from the previous exercise if you want. (Recommended!)
You may assume that n is always a positive integer.

PROBLEM
input (2): integers (number; last `n` digits)
output: integer (rotated)
explicit:
  write a method
  return the rotated input
implicit:
  rotating just 1 digit results in the original number being returned
  we can use methods from the previous exercise
  we can assume that input `n` is always positive

TEST CASES
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

ALGORITHM
Given two integers called `number` and `n`
Isolate last `n` digits, convert to string, convert to array, and pass to #rotate_array
Call #join on return value then convert back to integer
Return un-rotated digits + rotated digits
=end

def rotate_array(original_array)
  original_array[1..-1] + [original_array[0]]
end

def rotate_rightmost_digits(number, n)
  (number.to_s[0...-n] + rotate_array(number.to_s[-n..-1].chars).join).to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917