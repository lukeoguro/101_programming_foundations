=begin
A triangle is classified as follows:
equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must be greater
than the length of the longest side, and all sides must have lengths greater than 0:
if either of these conditions is not satisfied, the triangle is invalid.
Write a method that takes the lengths of the 3 sides of a triangle as arguments,
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether
the triangle is equilateral, isosceles, scalene, or invalid.

PROBLEM
input (3): integers (sides of the triangle)
output: symbol (:equilateral, :isosceles, :scalene, or :invalid)
explicit:
  write a method
  take the length of the 3 sides of the triangle and return the correct symbol
implicit:
  a triangle is valid if the sum of the 2 shortest sides are greater than the longest side
  all sides must be greater than 0, otherwise :invalid
  :equilateral if all sides are equal in length
  :isosceles if 2 sides are equal, 3rd is different
  :scalene if all sides are different

TEST CASES
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

ALGORITHM
Given 3 integers called `length1`, `length2`, `length3`
Save lengths into array called `lengths` and call (#sort!)
If any of the lengths are equal to 0 or sum of two shortest sides are less than or equal to longest side
  Return :invalid
else if all sides are equal
  Return :equilateral
else if two sides are equal
  Return :isosceles
else
  Return :scalene
End if statement
=end

def triangle(length1, length2, length3)
  lengths = [length1, length2, length3].sort!
  if lengths.any? { |l| l == 0 } || lengths[0..1].sum <= lengths[2]
    :invalid
  elsif lengths[0] == lengths[1] && lengths[0] == lengths[2]
    :equilateral
  elsif lengths[0] == lengths[1] || lengths[1] == lengths[2]
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid