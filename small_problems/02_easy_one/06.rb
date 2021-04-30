=begin
Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters reversed.
Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

PROBLEM
input: string (one or more words)
output: string (words with 5 or more characters reversed)
explicit:
  write a method
  return the given string with words that contain 5 or more characters reversed
  (words with less than 5 characters stays put)
implicit:
  keeps case-sensitivity
  what is a word?
  should we return the same string or a new string

TEST CASES
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA
input: string
inter: array (element: string (words))
output: string

ALGORITHM
Given a string called `str`
Call the `String#split` method to convert into array of words
Declare this is `words`
Loop through array (transformation)
  If the length of the word is more than 5 characters
    reverse the order of the string
  else
    string
  end
end
Convert array into string with the `#join` method (argument ' ')
=end

def reverse_words(str)
  words = str.split
  words.map! do |word|
    word.size >= 5 ? word.reverse : word
  end
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS