=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled.
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

PROBLEM
input: string
output: new string
explicit:
  write a method
  return a new string in which every consonant character is doubled
implicit:
  consonants are characters that are not vowels
  digits, punctuation, and whitespace should be doubled

TEST CASES
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

ALGORITHM
Given a string called `original_string`
Create global variable called `CONSONANTS` with all consonants
  Call `("a".."z").reject { |letter| "aeiou".include?(letter) }`
Create an empty string called `return_string`
Loop (iterate with #each_char) over `original_string`, where each element is `char`
  If `char` is a consonant (call `CONSONANTS.include?(char.downcase)`)
    Append (`char` * 2) to `return_string` (#concat)
  else
    Append `char` to `return_string` (#concat)
  End if statement
End loop
Return `return_string`

=end

CONSONANTS = ("a".."z").reject { |letter| "aeiou".include?(letter) }

def double_consonants(original_string)
  return_string = ''
  original_string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      return_string.concat(char * 2)
    else
      return_string.concat(char)
    end
  end
  return_string
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""