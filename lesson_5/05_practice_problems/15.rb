=begin
PROBLEM
Given this data structure write some code to return an array which contains
only the hashes where all the integers are even.

BREAKDOWN
#select method for the outer loop
#all? method for second level loop
#all? method for third level loop
=end

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_, sub_arr|
    sub_arr.all? do |n|
      n.even?
    end
  end
end

p new_arr