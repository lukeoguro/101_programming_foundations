=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

PROBLEM
input (2): strings (age; retirement_age)
output: print to screen (what year she is going to retire; how many more years she has to work)

TEST CASE
=> What is your age? 30
=> At what age would you like to retire? 70
=> It's 2016. You will retire in 2056.
=> You have only 40 years of work to go!

DATA STRUCTURE
input (2): strings
inter:
  convert strings to integers (age; retirement_age)
  CONSTANT: CURRENT_YEAR
  integer (retirement_year); integer (years_to_go)
output:
  print to screen

ALGORITHM
Ask for two inputs (`age`, `retirement_age`)
Initialize variable called `years_to_go`, set to difference between the two inputs
Print to screen
  `CURRENT_YEAR`; `retirement_year`
  `years_to_go`

=end

CURRENT_YEAR = Time.now.year

puts "What is your age? "
age = gets.chomp.to_i

puts "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

years_to_go = retirement_age - age

puts "It's #{CURRENT_YEAR}. You will retire in #{CURRENT_YEAR + years_to_go}."
puts "You have only #{years_to_go} of work to go!"