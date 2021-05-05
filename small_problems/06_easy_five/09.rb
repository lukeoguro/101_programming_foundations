=begin
Write a method that takes a string argument and returns a new string that contains the value of
the original string with all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.

PROBLEM
input: string
output: string (consecutive duplicate characters collapsed)
explicit:
  write a method
  return a new string that contains the values of the original string with consecutive duplicate characters collapsed
implicit:
  Cannot use the String#squeeze or String#squeeze! methods
  Could we get an empty string?

TEST CASES
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

ALGORITHM
given a string `original_string`
init a new string `collapsed_string` equal to an empty string
Iterate on `original_string` with `#each_char`; local variable `char`
  collapsed_string.concat(char) if collapsed_string[-1] != char
End iteration

=end

def crunch(original_string)
  collapsed_string = ''
  original_string.each_char do |char|
    collapsed_string.concat(char) if collapsed_string[-1] != char
  end
  collapsed_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''