=begin
Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a character.
=end

print "Please write word or multiple words: "
words = gets.chomp

puts "There are #{words.delete(" ").length} characters in \"#{words}\"."