=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer.
String#to_i and the Integer constructor (Integer()) behave similarly.
In this exercise, you will create a method that does the same thing.
Write a method that takes a String of digits, and returns the appropriate number as an integer.
You may not use any of the methods mentioned above.
For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc.
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

PROBLEM
input: string (string of digits)
output: integer (converted from input)
explicit:
  write a method
  convert string input to an integer
implicit:
  do not use String#to_i or any other conversion method
  Assume all characters are numeric
  Don't worry about invalid characters
  Don't worry about leading +/- signs

TEST CASES
string_to_integer('4321') == 4321
string_to_integer('570') == 570

DATA STRUCTURE
input: string
inter: hash to show that '1' => 1
output: integer

BREAKDOWN
'4321' has characters ['4','3','2','1']
4 x 1000; 4 x 10**3; length-(index+1)
3 x 100;  3 x 10**2;
2 x 10;   2 x 10**1;
1 x 1     1 x 10**0;
<- sum

ALGORITHM
Given an input string `string`
Create a hash called `conversion` where '1' => 1, and so on
Create an integer `integer` equal to 0
Iterate (#each_with_index) on `char` in `string` (#chars) (index: `idx`)
  Add to `integer`: conversion[`char`] * 10**(length-idx-1)
End iteration
Return integer

=end

def string_to_integer(string)
  conversion = {'0'=>0,'1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9}
  integer = 0
  string.chars.each_with_index do |char, idx|
    integer += conversion[char] * 10**(string.size-idx-1)
  end
  integer
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570