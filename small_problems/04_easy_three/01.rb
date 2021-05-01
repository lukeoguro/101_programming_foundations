=begin
Write a program that solicits 6 numbers from the user, then prints a message that
describes whether or not the 6th number appears amongst the first 5 numbers.

PROBLEM
input (6): all integers (+)
output: print to screen
explicit:
  write a program
  asks users to input 6 numbers
  print a message saying whether the 6th number appears in the first 5 numbers
implicit:
  integers are positive
  no floats

TEST CASE
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

DATA STRUCTURE:
input (5): integers
inter: store integers in an array
output: print to screen

ALGORITHM
create an empty array called `numbers`
Get the user's input 5 times, and append each number to array
Conditional
  if number appears in array: print that it appears
  else: print that it does not appear

=end

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i

puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i

puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i

puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i

puts "==> Enter the last number:"
number = gets.chomp.to_i

if numbers.include?(number)
  puts "The number #{number} appears in #{numbers}."
else
  puts "The number #{number} does not appear in #{numbers}."
end