=begin
PROBLEM
Given the following data structure, and without using the Array#to_h method,
write some code that will return a hash where the key is the first item in each
sub array and the value is the second item.

BREAKDOWN
Loop with each method
Assign object at index 0 to key
Assign object at index 1 to value
=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = arr.each_with_object({}) do |item, hsh|
  hsh[item[0]] = item[1]
end

p hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
