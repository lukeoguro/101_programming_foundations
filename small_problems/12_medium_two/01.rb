=begin
Write a program that reads the content of a text file and then prints the longest sentence
in the file based on number of words. Sentences may end with periods (.), exclamation points (!),
or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters
should be treated as a word. You should also print the number of words in the longest sentence.

PROBLEM
input: file
output: print to screen (longest sentence; number of words in sentence)
explicit:
  write a program
  read the content of the text file
  print the longest sentence in the file based on the number of words
implicit:
  sentences end with periods, exclamation points, or question marks
  any non-space sequence is a word

DATA STRUCTURES
input: file
inter: Array of strings (sentences)
output: print to screen

ALGORITHM
Create a new file object from `01.txt` called `file`
Read `file` and save it into a string called `file_content`
Split the string into sentences and save in array called `sentences`
Sort the `sentences` by length of `sentence`
Print longest sentence and it's length

=end

file = File.new('01.txt')
file_content = file.read

sentences = file_content.split('.')
sentences = sentences.map { |sentence| sentence.split('!') }.flatten
sentences = sentences.map { |sentence| sentence.split('?') }.flatten

sentences.sort_by!(&:length).reverse!

puts sentences[0]
puts sentences[0].split.length