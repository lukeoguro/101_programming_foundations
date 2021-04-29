=begin
PROBLEM
Given the following data structure and without modifying the original array,
use the map method to return a new array identical in structure to the original
but where the value of each integer is incremented by 1.

BREAKDOWN
Return a new array identical in structure
Increment each value in each hash by 1
Use map method for outer loop
Clone inner hash and increment each value by 1
=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |item|
  new_hsh = item.clone
  new_hsh.each_key do |key|
    new_hsh[key] += 1
  end
  new_hsh
end

p arr
p new_arr