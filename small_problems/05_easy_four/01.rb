=begin
Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string,
and the shorter string once again. You may assume that the strings are of different lengths.

PROBLEM
input (2): strings (one long string, one short string)
output: string (concatenation of the short string, the long string, the short string)
explicit:
  write a method
  returns the result of concatenating the shorter string, the longer string, the shorter string
implicit:
  the strings will be of different lengths
  what if the string is empty?

TEST CASES
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

DATA STRUCTURE
input (2): strings
inter: NA
output: string

ALGORITHM
Given two strings (`string1`, `string2`)
If size of `string1` is greater than `string2`
  return `string2 + string1 + string2`
else:
  return `string1 + string2 + string1`

=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"


