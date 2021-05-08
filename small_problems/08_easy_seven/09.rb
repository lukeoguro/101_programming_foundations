=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers,
and returns a new Array that contains the product of every pair of numbers that can be formed between
the elements of the two Arrays. The results should be sorted by increasing value.
You may assume that neither argument is an empty Array.

PROBLEM
input (2): array of integers
output: a new Array
explicit:
  write a method
  return a new Array with every product pair, sorted by increasing value
implicit:
  neither input array will by empty

TEST CASES
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

ALGORITHM
Given two input arrays called `array1` and `array2`
Create an empty array called `return_array`
Loop (iteration with #each) over `array1`, where each element is `i`
  Loop (iteration with #each) over `array2`, where each element is `j`
    Append (i * j) to `return_array`
  End loop
End outer loop
return_array.sort

=end

def multiply_all_pairs(array1, array2)
  return_array = []
  array1.each do |i|
    array2.each do |j|
      return_array.append(i*j)
    end
  end
  return_array.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
