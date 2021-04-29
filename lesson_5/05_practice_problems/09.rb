=begin
PROBLEM
Given this data structure, return a new array of the same structure
but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

BREAKDOWN
Return new array with ordered sub arrays
Sort sub arrays in descending order
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map do |item|
  item.sort do |a, b|
    b <=> a
  end
end

p new_arr
