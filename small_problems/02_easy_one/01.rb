=begin
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

PROBLEM
2 Inputs: A string and a positive integer
Output: Print the string as many times as the integer indicates
Write a method called `repeat`

TEST CASE
repeat('Hello', 3)

ALGORITHM
Given a string `str` and an integer `int`
Loop (iteration). `#times` method on `int`
  `#puts` method for the `str`
End loop
=end

def repeat(str, int)
  int.times { |_| puts str }
end

repeat('Hello', 3)




