=begin
A double number is a number with an even number of digits whose left-side digits are exactly the same
as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
Write a method that returns 2 times the number provided as an argument, unless the argument is a double number;
double numbers should be returned as-is.

PROBLEM
input: integer
output: integer (double if it's a double number)
explicit:
  write a method
  return 2 times the input number if the number is a double number
implicit:
  a double number is when the front half and the second half of the number are the same

TEST CASES
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

BREAKDOWN
`middle_index = number.length / 2`
`number.to_s[0...middle_index] == number.to_s[middle_index..-1]`

ALGORITHM
Given an integer called `number`
Create a variable called `mid_idx` set to length of number string / 2
If `number.to_s[0...mid_idx] == number.to_s[mid_idx..-1]`
  number
else
  number * 2
End if statement

=end

def twice(number)
  mid_idx = number.to_s.length / 2
  number.to_s[0...mid_idx] == number.to_s[mid_idx..-1] ? number : number * 2
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

