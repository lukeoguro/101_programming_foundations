=begin
Write a method that takes an array of strings, and returns an array of the same string values,
except with the vowels (a, e, i, o, u) removed.

PROBLEM
input: Array of strings
output: New array of strings (with vowels removed)
explicit:
  write a method
  return an array of the same string values with vowels removed
implicit:
  vowels (a, e, i, o, u)
  New array returned

TEST CASES
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

ALGORITHM
Given an array called `original_array`
Loop (transformation with #map) on `original_array`, where each element is `word`
  Call #delete("aeiouAEIOU") onto `word`
End loop

=end

def remove_vowels(original_array)
  original_array.map { |word| word.delete("aeiouAEIOU") }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
