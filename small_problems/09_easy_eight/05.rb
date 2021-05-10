=begin
Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it does backwards.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.
You may (and should) use the substrings method you wrote in the previous exercise.
For the purposes of this exercise, you should consider all characters and pay attention to case;
that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.
In addition, assume that single characters are not palindromes.

PROBLEM
input: string
output: array of strings (substrings that are palindromes)
explicit:
  write a method
  return a list of all substrings of a string tha are palindromes
implicit:
  palindrome is a substring that has the same sequence forwards and backwards
  return value should be arranged as the same sequence as the substrings appear in the string
  duplicate palindromes should be included
  palindromes are case-sensitive and considers all characters
  single characters are not palindromes

TEST CASES
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

ALGORITHM
Given a string called `string`
Create a variable called `substrings` and set it to the return value of the `#substrings` method
Loop (select with #select) over `substrings`, where each element is `substring`
  `substring == substring.reverse unless substring.size == 1`
End loop
=end

def substrings(string)
  substrings = []
  0.step(string.size - 1) do |start_index|
    start_index.step(string.size - 1) do |end_index|
      substrings.append(string[start_index..end_index])
    end
  end
  substrings
end

def palindromes(string)
  substrings = substrings(string)
  substrings.select do |substring|
    substring == substring.reverse unless substring.size == 1
  end
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
