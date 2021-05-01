=begin
Write a program that prompts the user for two positive integers,
and then prints the results of the following operations on those two numbers:
addition, subtraction, product, quotient, remainder, and power.
Do not worry about validating the input.

input (2): integers
output: print to screen
explicit:
  calculate the results of +, -, *, /, %, **
implicit:
  no validations necessary

TEST CASE
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end

puts "==> Enter the first number:"
number1 = gets.chomp.to_i

puts "==> Enter the second number:"
number2 = gets.chomp.to_i

puts "==> #{number1} + #{number2} = #{number1 + number2}"
puts "==> #{number1} - #{number2} = #{number1 - number2}"
puts "==> #{number1} * #{number2} = #{number1 * number2}"
puts "==> #{number1} / #{number2} = #{number1 / number2}"
puts "==> #{number1} % #{number2} = #{number1 % number2}"
puts "==> #{number1} ** #{number2} = #{number1 ** number2}"

