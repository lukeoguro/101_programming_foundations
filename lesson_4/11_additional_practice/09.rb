=begin
PROBLEM:
Capitalize the first character of each word in the string

ALGORITHM:
- Split string into array of words
- Capitalize the first letter of each word
- Merge back into string
=end

words = "The Flintstones Rock"

def titleize(str)
  words_arr = str.split
  words_arr.map! { |word| word.capitalize }
  words_arr.join(" ")
end

puts titleize(words)