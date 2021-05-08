=begin
Write a method that takes a string as an argument and returns a new string in which
every uppercase letter is replaced by its lowercase version, and every lowercase letter
by its uppercase version. All other characters should be unchanged.
You may not use String#swapcase; write your own version of this method.

PROBLEM
input: string
output: a new string (letters swapcased)
explicit:
  write a method
  return a new string where uppercase letters are converted to lowercase, and vice versa
implicit:
  Do not use String#swapcase

TEST CASES
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

ALGORITHM
Given a string called `original_string`
Create an empty string called `return_string`
Loop (iteration with #each_char) over `original_string`, where each element is `char`
  If `char` is uppercase, append lowercase to `return_string`
  elsif `char` is lowercase, append uppercase to `return_string`
  else, append `char` as is to `return_string`
End loop
Return `return_string`

=end

def swapcase(original_string)
  return_string = ''
  original_string.each_char do |char|
    if ("A".."Z").include?(char)
      return_string.concat(char.downcase)
    elsif ("a".."z").include?(char)
      return_string.concat(char.upcase)
    else
      return_string.concat(char)
    end
  end
  return_string
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'