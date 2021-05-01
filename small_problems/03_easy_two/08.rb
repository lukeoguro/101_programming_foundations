=begin
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

PROBLEM
input (2): integer; string ('s', 'p')
output: print to screen
explicit:
  write a program
  ask for the integer and string (s/p)
  calculate the sum or product from 1 to the integer
implicit:
  NA

TEST CASE
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

ALGORITHM
Ask for integer `int`
Ask for sum or product `sum_or_product`
Conditional
  If user is asking for a sum: calculate and print the sum
  If user is asking for a product: calculate and print the product

=end

puts "Please enter an integer greater than 0:"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp

if sum_or_product == 's'
  puts "The sum of the integers between 1 and #{int} is #{(1..int).inject(:+)}."
else
  puts "The product of the integers between 1 and #{int} is #{(1..int).inject(:*)}."
end

