=begin
Write a method that takes a String as an argument, and returns a new String that contains the
original value using a staggered capitalization scheme in which every other character is capitalized,
and the remaining characters are lowercase. Characters that are not letters should not be changed,
but count as characters when switching between upper and lowercase.

PROBLEM
input: string
output: a new string (staggered capitalization)
explicit:
  write a method
  return a new string that contains the original values, but uses staggered capitalization
implicit:
  non-letters should not be changed, but count as characters (spaces count)
  First character is capitalized, second is not, and so on

TEST CASES
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

ALGORITHM
Given a string called `original_string`
Create an empty string called `return_string`
Create a variable called `counter` set to 0
Loop (iterate with #each_char) over `original_string`, where each element is `char`
  If the counter is even, append `char.upcase` to `return_string`
  else, append `char.downcase` to `return_string`
  Add 1 to counter
End loop
Return `return_string`

=end

def staggered_case(original_string)
  return_string = ''
  counter = 0
  original_string.each_char do |char|
    counter.even? ? return_string.concat(char.upcase) : return_string.concat(char.downcase)
    counter += 1
  end
  return_string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'