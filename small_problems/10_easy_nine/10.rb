=begin
Write a program that prints out groups of words that are anagrams.
Anagrams are words that have the same exact letters in them but in a different order.
Your output should look something like this:

PROBLEM
input: Array of strings (words)
output: print to screen
explicit:
  write a program
  print groups of words that are anagrams
implicit:
  anagrams are words that have the same exact letters in them but in a different order

TEST CASES
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

DATA STRUCTURE
input: Array of strings
inter: Array of nested arrays called `anagrams`
output: print to screen

ALGORITHM
Given an input array called `words`
Create an empty array called `all_anagrams`
Loop (iterate with #each) over `words`, where each element is `word`
  Loop (iterate with #each) over `all_anagrams`, where each element is `anagrams`
    If `word.chars.sort == anagrams[0].chars.sort`
      Append `word` to `anagrams`
      break
    End if statement
  End inner loop
  Append `[word]` to `all_anagrams`
End outer loop
Loop (iterate with #each) over `all_anagrams`, where each element is `anagrams`
  If size of `anagrams` is greater than 1, `p anagrams`
End loop
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

all_anagrams = []

words.each do |word|
  all_anagrams.each do |anagrams|
    if word.chars.sort == anagrams[0].chars.sort
      anagrams.append(word)
      break
    end
  end
  all_anagrams.append([word])
end

all_anagrams.each do |anagrams|
  p anagrams if anagrams.size > 1
end