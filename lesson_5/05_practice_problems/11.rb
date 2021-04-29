=begin
PROBLEM
Given the following data structure use a combination of methods,
including either the select or reject method, to return a new array identical
in structure to the original but containing only the integers that are multiples of 3.

BREAKDOWN
What does it mean to be identical in structure?
  [2] => []
  [3, 5, 7] => [3]
  [11, 13, 15] => [15]
Use select method on the inner loop
Map on the outer loop
=end

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |item|
  item.select do |num|
    num % 3 == 0
  end
end

p new_arr