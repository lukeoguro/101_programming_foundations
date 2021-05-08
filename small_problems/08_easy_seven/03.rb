=begin
Write a method that takes a single String argument and returns a new string that contains the original value
of the argument with the first character of every word capitalized and all other letters lowercase.
You may assume that words are any sequence of non-blank characters.

PROBLEM
input: string
output: a new string (all words capitalized)
explicit:
  write a method
  return a new string that contains the original string with each word capitalized
implicit:
  capitalizing means the first letter is uppercase, and all other letters are lowercase
  word is any sequence of non-blank characters

TEST CASES
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

ALGORITHM
Given a string called `string_of_words`
Create an array called `words` by calling `#split` on `string_of_words`
Loop (transformation with #map!) over `words`, where each element is `word`
  Call `#capitalize` on `word`
End loop
Return words.join(' ')

=end

def word_cap(string_of_words)
  words = string_of_words.split
  words.map! do |word|
    word.capitalize
  end
  words.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'