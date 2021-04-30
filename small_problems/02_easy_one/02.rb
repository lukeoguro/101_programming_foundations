=begin
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

PROBLEM
input:integer (+, -, 0)
output: boolean (true, false based on number's absolute value being odd)
explicit:
  write a method that returns a boolean
  take the integer and see if the absolute value is odd
implicit:
  the number can be +,-,0
  the argument is a valid integer
  not allowed to use `#odd` or `#even` method

TEST CASES
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

ALGORITHM
Given an integer `int`
Use operator `%` on int, see if equals 1
=end

def is_odd?(int)
  int % 2 == 1
end

def is_odd?(int)
  int.abs.remainder(2) == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
