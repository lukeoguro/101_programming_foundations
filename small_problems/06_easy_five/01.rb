=begin
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
The ASCII string value is the sum of the ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

PROBLEM
input: string
output: integer (sum of ASCII values)
explicit:
  write a method
  return the ASCII string value of a string
implicit:
  the "ASCII string value" is the sum of ASCII values of each character
  We can use #ord method to get ASCII value of a character

TEST CASES
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

ALGORITHM
Given string called `string`
Create variable called `sum` set to 0
Loop (iteration with #each_char) over `string`, where each element is `char`
  Add `char#ord` to `sum`
End loop
Return `sum`

ALGORITHM (trick)
Given string called `string`
Call `string.codepoints.sum`

=end

def ascii_value(string)
  sum = 0
  string.each_char do |char|
    sum += char.ord
  end
  sum
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
