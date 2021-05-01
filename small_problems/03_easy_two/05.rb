=begin
Write a program that will ask for user's name.
The program will then greet the user.
If the user writes "name!" then the computer yells back to the user.

PROBLEM
input: string (name)
output: print to screen
explicit:
  write a program
  program greets the user in either a normal way or in all caps
implicit:
  what does "name!" mean?

TEST CASES
What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

DATA STRUCTURE
input: string (name) that may include "!" at end
inter: NA
output: print to screen

ALGORITHM
Prompt user for name
Conditional:
  If the string ends with "!", print in all caps
  else: print to screen normally

=end

puts "What is your name? "
name = gets.chomp

if name.end_with?("!")
  puts "HELLO #{name[0..-2].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end