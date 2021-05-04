=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
and then computes the sum of those multiples. For instance, if the supplied number is 20,
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
You may assume that the number passed in is an integer greater than 1.

PROBLEM
input: integer (greater than 1)
output: integer (sum of multiples)
explicit:
  write a method
  return sum of all multiples of 3 and 5 between 1 and the input
implicit:
  integer is greater than 1

TEST CASES
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33         #3, 5, 6, 9, 10
multisum(1000) == 234168

DATA STRUCTURE
input: integer
inter: range (1..20) array of all multiples
output: integer

ALGORITHM
Given integer `supplied_number`
Array `multiples` equals Loop (selection method `#select`): `number` in (1..`supplied_number`)
  Select if multiple of 3 or 5
end
`multiples.sum`

=end

def multisum(supplied_number)
  multiples = (1..supplied_number).select do |number|
    number % 3 == 0 || number % 5 == 0
  end
  multiples.sum
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33         #3, 5, 6, 9, 10
puts multisum(1000) == 234168