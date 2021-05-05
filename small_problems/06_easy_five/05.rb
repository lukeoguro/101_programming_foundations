=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, you should only have one space in the result
(the result should never have consecutive spaces).

PROBLEM
input: string (alphabetic and non-alphabetic characters)
output: string (only alphabetic characters)
explicit:
  write a method
  return a string with all of the non-alphabetic characters replaced by spaces
implicit:
  if there are more than one non-alphabetic character in a row, you should only have one space
  you should never have consecutive spaces
  all words are lowercased

TEST CASE
cleanup("---what's my +*& line?") == ' what s my line '

ALGORITHM
Given a string called `original_string`
Create an empty string called `return_string`
Loop (iteration with #each_char) over `original_string`, where each element is `char`
  If `char` is the range of lowercase letters
    Add `char` to `return_string` (#concat)
  else
    Add space to `return_string` if return_string[-1] is not a space
  End
End loop
Return `return_string`

=end

def cleanup(original_string)
  return_string = ''
  original_string.each_char do |char|
    if ('a'..'z').include?(char)
      return_string.concat(char)
    else
      return_string.concat(' ') if return_string[-1] != ' '
    end
  end
  return_string
end

puts cleanup("---what's my +*& line?") == ' what s my line '
