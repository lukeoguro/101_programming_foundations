=begin
Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
The program must compute the tip and then display both the tip and the total amount of the bill.

PROBLEM
input (2): float (bill); float (tip percentage)
output: print to screen (tip; total)
explicit:
  write a program
  the program should ask for bill amount and tip rate
  compute the tip
  display the tip and total amount of the bill
implicit:
  will the bill be a positive number?
  will the tip percentage be a positive number?

TEST CASE
=> What is the bill? 200
=> What is the tip percentage? 15
=> The tip is $30.0
=> The total is $230.0

DATA STRUCTURE
input (2): floats (bill, tip)
inter: float (tip)
output: print to screen

ALGORITHM
ask for bill and tip percentage (`bill`, `tip_percentage`)
`tip_percentage` = `tip_percentage` / 100
Initialize variable `tip_amount` to `bill` * `tip_percentage`
print to screen

=end

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f / 100

tip_amount = (bill * tip_percentage).round(2)

puts "The tip is $#{tip_amount}"
puts "The total is $#{tip_amount + bill}"