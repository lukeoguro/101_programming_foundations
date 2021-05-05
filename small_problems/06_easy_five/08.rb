=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those
Integers sorted based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen,
fifteen, sixteen, seventeen, eighteen, nineteen

PROBLEM
input: array of integers (0..19)
output: array of integers (sorted based on english word)

TEST CASE
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

ALGORITHM
Given an array `original_array`
Create an array of English words given in prompt called `english_words`
Call the `#sort_by` method and sort by `english_words`

=end

ENGLISH_WORDS = %w(zero one two three four five six seven eight nine ten eleven
  twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(original_array)
  original_array.sort_by do |num|
    ENGLISH_WORDS[num]
  end
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
