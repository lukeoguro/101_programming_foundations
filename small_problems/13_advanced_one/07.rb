=begin
Write a method that takes two sorted Arrays as arguments, and returns a new Array
that contains all elements from both arguments in sorted order.
You may not provide any solution that requires you to sort the result array.
You must build the result array one element at a time in the proper order.
Your solution should not mutate the input arrays.

PROBLEM
input (2): Arrays (sorted)
output: new Array (all elements from both inputs are in sorted order)
explicit:
  write a method
  return a new array that contains all elements from both arguments in sorted order
implicit:
  we cannot sort the result array with #sort
  you must build the result array one element at a time
  your solution should not mutate the input array

TEST CASES
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

ALGORITHM
Given two arrays called `array1` and `array2`
Create an empty array called `merged_array`
Create a variable called `idx` set to 0
Loop (iterate with #each) over `array1`, where each element is `i`
  Until `array2[idx..-1]` is empty
    If `array2[idx]` less than (<) `i`
      push `array2[idx]` to `merged_array`
      Add 1 to `idx`
    Else
      break
    End if statement
  End loop
  Push `i` to `merged_array`
End loop
Concat `merged_array` with `array2[idx..-1]`

=end

def merge(array1, array2)
  merged_array = []
  idx = 0
  array1.each do |i|
    until array2[idx..-1].empty? || array2[idx] > i
      merged_array.push(array2[idx])
      idx += 1
    end
    merged_array.push(i)
  end
  merged_array.concat(array2[idx..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
