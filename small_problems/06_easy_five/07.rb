=begin
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.
=end

def word_sizes(string_of_words)
  word_sizes = {}
  string_of_words.split.each do |word|
    size = word.chars.select { |char| ("a".."z").include?(char.downcase) }.size
    if word_sizes.has_key?(size)
      word_sizes[size] += 1
    else
      word_sizes[size] = 1
    end
  end
  word_sizes
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}