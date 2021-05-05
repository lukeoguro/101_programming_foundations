=begin
Given a string of words separated by spaces, write a method that takes this string of words
and returns a string in which the first and last letters of every word are swapped.
You may assume that every word contains at least one letter, and that the string will always contain
at least one word. You may also assume that each string contains nothing but words and spaces

PROBLEM
input: string (string of words)
output: string (altered input)
explicit:
  write a method
  return a string in which the first and last letters of every word are swapped
implicit:
  assume that every word contains at least one letter
  assume that the string will always contain at least one word
  each string contains nothing but words and spaces

TEST CASES
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DATA STRUCTURE
input: string
inter: Array of strings (words)
output: string

ALGORITHM
Given an input string called `string_of_words`
Create an array called `array_of_words` with #split
Loop (transform with #map!) on `array_of_words`, where each element is `word`
  return word if word.length == 1
  word[-1] + word[1..-2] + word[0]
End loop
Call #join(' ') on array_of_words

=end

def swap(string_of_words)
  array_of_words = string_of_words.split
  array_of_words.map! do |word|
    word.size == 1 ? word : word[-1] + word[1..-2] + word[0]
  end
  array_of_words.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

