=begin
The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey.
The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey.
This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments,
and returns true if exactly one of its arguments is truthy, false otherwise.
Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

PROBLEM
input (2): booleans
output: boolean (true if only one is true, else false)
explicit:
  write a method that takes two arguments
  returns true if exactly one of its arguments are truthy
implicit:
  na

BREAKDOWN
&& returns:
  t f
t o x
f x x
|| returns:
  t f
t o o
f o x
xor returns: (needs to return (x||y)&&!(x&&y) )
  t f
t x o
f o x

TEST CASES
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

=end

def xor?(x, y)
  (x || y) && !(x && y)
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false