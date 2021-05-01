=begin
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

PROBLEM
input: string
output: boolean
explicit:
  write a method
  returns true if string is a palindrome
implicit:
  case-insensitive
  ignores all non-alphanumeric characters

TEST CASES
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

DATA STRUCTURE
input: string
inter: array of alphanumeric characters in the word
output: boolean

ALGORITHM
given a string `str`
loop (selection) through each character (`char`) in `str`
  select if `char` is in the alphanumeric range
end
set the return value to `str_stripped`.join
return whether reverse equals to original

=end

def real_palindrome?(str)
  chars_arr = str.downcase.chars.select do |char|
    char.between?('0', '9') || char.between?('a', 'z')
  end
  str_stripped = chars_arr.join
  str_stripped.reverse == str_stripped
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false