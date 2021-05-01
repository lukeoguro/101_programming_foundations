=begin
Write a method that returns true if its integer argument is palindromic, false otherwise.
A palindromic number reads the same forwards and backwards.

TEST CASE
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

=end

def palindromic_number?(num)
  str = num.to_s
  str.reverse == str
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true