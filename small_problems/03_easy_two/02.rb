=begin
Build a program that asks a user for the length and width of a room in meters and
then displays the area of the room in both square meters and square feet.

PROBLEM
input (2): string (length); string (width)
output: print area of room in square meters and square feet
explicit:
  write a program
  ask the user to input the length and width (in meters)
  display the area of the room in both square meters and square feet
implicit:
  1 square meter == 10.7639 square feet

TEST CASE
=> Enter the length of the room in meters:
10
=> Enter the width of the room in meters:
7
=> The area of the room is 70.0 square meters (753.47 square feet).

DATA STRUCTURES
input (2): strings (length & width)
inter: strings -> float; float (area)
output: print to screen

ALGORITHM
Ask user for input (convert string -> integer) (`length`, `width`)
Assign variable `area_in_meters` to `length` x `width`
Print to screen

=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_meters = length * width
area_in_feet = area_in_meters * 10.7639

puts "The area of the room is #{format('%.1f', area_in_meters)} square meters (#{format('%.2f', area_in_feet)} square feet)."