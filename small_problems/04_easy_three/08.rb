=begin
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

PROBLEM
input: string
output: boolean (t/f based on palindrome)
explicit:
  write a method
  returns true if the string is a palindrome, false otherwise
implicit:
  case matters
  punctuation and space matters
  what to do with an empty string?

TEST CASES
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

=end

def palindrome?(str)
  str.reverse == str
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true