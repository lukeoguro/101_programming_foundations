=begin
PROBLEM
Using the each method, write some code to output all of the vowels from the strings.

BREAKDOWN
For each array value of the hash
For each word of array
For each char of word
Output letter if it's a vowel
=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |arr|
  arr.each do |word|
    word.each_char do |char|
      puts char if "aeiou".include?(char)
    end
  end
end

