=begin
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.

PROBLEM
input: NA
output: string (show Teddy's age)
explicit:
  write a program
  generate a random number between 20 and 200
implicit:
  NA

TEST CASES
=> Teddy is 69 years old!

DATA STRUCTURES
input: NA
inter: range of (20..200)
output: string (interpolation)

ALGORITHM
Initialize variable `age_range` to range of 20 to 200 and convert to Array
Call `#sample` method onto `age_range`
Print string

=end

age = rand(20..200)
puts "Teddy is #{age} years old!"