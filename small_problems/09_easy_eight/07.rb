=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

PROBLEM
input: string
output: new string
explicit:
  write a method
  return a new string in which every character is doubled

TEST CASES
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

ALGORITHM
Given a string called `original_string`
Loop (transform with #map) over `original_string.chars`, where each element is `char`
  Return `char * 2`
End loop
Call `#join` method on the return value of the loop
=end

def repeater(original_string)
  original_string.chars.map { |char| char * 2 }.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''