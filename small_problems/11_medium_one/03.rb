=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If you
now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits
fixed in place and rotate again to get 321597. Finally, keep the first 4 digits fixed in place
and rotate the final 2 digits to get 321579. The resulting number is called the maximum
rotation of the original number.
Write a method that takes an integer as argument, and returns the maximum rotation of that
argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
Note that you do not have to handle multiple 0s.

PROBLEM
input: integer
output: integer (maximum rotation)
explicit:
  write a method
  returns the maximum rotation of the argument
implicit:
  you should use the #rotate_rightmost_digits method
  we do not have to handle multiple 0s

BREAKDOWN
input: 735291
735291 -> 352917 # 0 digit freeze # 6 rightmost
352917 -> 329175 # 1 digit freeze # 5 rightmost
329175 -> 321759 # 2 digit freeze # 4 rightmost
321759 -> 321597 # 3 digit freeze # 3 rightmost
321597 -> 321579 # 4 digit freeze # 2 rightmost

TEST CASES
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

ALGORITHM
Given an integer `number`
Return `number` length of number is 1 (actually not necessary)
Create a variable called `rotated_number` set to `number`
Loop (iterate with #step) from length of `number` to `2`, where index is `n`
  Call #rotate_rightmost_digits with argument `rotated_number` and `n`
  Save the return value to `rotated_number`
End loop
Return rotated_number
=end

def rotate_array(original_array)
  original_array[1..-1] + [original_array[0]]
end

def rotate_rightmost_digits(number, n)
  (number.to_s[0...-n] + rotate_array(number.to_s[-n..-1].chars).join).to_i
end

def max_rotation(number)
  rotated_number = number
  number.to_s.length.step(2, -1) do |n|
    rotated_number = rotate_rightmost_digits(rotated_number, n)
  end
  rotated_number
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845