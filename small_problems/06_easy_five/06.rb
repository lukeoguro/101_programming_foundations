=begin
Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.
Words consist of any string of characters that do not include a space.

PROBLEM
input: string (space-separated words)
output: hash (number of words of different sizes)
explicit:
  write a method
  return a hash that shows teh number of words of different sizes
implicit:
  word consists of any string of characters that do not include a space

TEST CASES
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

ALGORITHM
Given a string `string_of_words`
Create an empty hash called `word_sizes`
Loop (iteration with #each) over `string_of_words`.split, where each element is `word`
  size = `word.size`
  If `word_sizes` has the key `word.size`
    word_sizes[size] += 1
  else
    word_sizes[size] = 1
  end
End loop
word_sizes

=end

def word_sizes(string_of_words)
  word_sizes = {}
  string_of_words.split.each do |word|
    size = word.size
    if word_sizes.has_key?(size)
      word_sizes[size] += 1
    else
      word_sizes[size] = 1
    end
  end
  word_sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

