=begin
PROBLEM
How would you order this array of number strings by descending numeric value?

BREAKDOWN
Given an array of strings representing numbers
Sort in descending numeric value

NOTES
`Array#sort` can take an optional block with two local variables `a` and `b`
If `a` precedes `b`, <0 must be returned, and `a <=> b` does exactly that
A reverse order can be achieved with `b <=> a`, which returns >0, indicating `a` comes after `b`
=end

arr = ['10', '11', '9', '7', '8']

return_arr = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

p return_arr