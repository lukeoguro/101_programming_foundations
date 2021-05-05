=begin
Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
You may assume that the strings are of different lengths.

PROBLEM
input (2): strings (one long, one short)
output: string (concatenation)
explicit:
  write a method
  return the result of concatenating the shorter, longer, and shorter string
implicit:
  assume that the strings will be of different lengths

TEST CASES
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

ALGORITHM
Given two strings `string1` `string2`
If the size of string1 is greater than that of string2
  return string2 + string1 + string2
else
  return string1 + string2 + string1

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