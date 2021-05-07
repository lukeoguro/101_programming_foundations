=begin
Write a method that takes a positive integer, n, as an argument, and displays a right triangle
whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below)
should have one end at the lower-left of the triangle, and the other end at the upper-right.

PROBLEM
input: integer (positive)
output: print to screen
explicit:
  write a method
  print a right triangle whose sides each have n stars
implicit:
  the diagonal side of the triangle should go from the lower-left to the upper-right of the screen

TEST CASES
triangle(5)
    *
   **
  ***
 ****
*****

triangle(9)
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

=end

def triangle(grid_size)
  1.step(grid_size) { |i| puts ("*" * i).rjust(grid_size, " ") }
end

triangle(5)
triangle(9)
