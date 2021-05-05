=begin
The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer.
String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.
Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.
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

ALGORITHM
Given a string called `string_of_digits`
Create hash called `CONVERSION` where '1' => 1, and so on
Create variable `integer` set to 0
Loop (iteration with #each_char) over `string_of_digits`, where each element is `char`
  Integer *= 0
  Add CONVERSION[`char`] to integer
End loop
return `integer`

=end

CONVERSION = {'0'=>0,'1'=>1,'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9}

def string_to_integer(string_of_digits)
  integer = 0
  string_of_digits.each_char do |char|
    integer *= 10
    integer += CONVERSION[char]
  end
  integer
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
