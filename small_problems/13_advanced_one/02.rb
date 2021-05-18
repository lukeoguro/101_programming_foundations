=begin
Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that
is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

PROBLEM
input: integer (n)
output: print to screen
explicit:
  write a method
  display an 8-pointed star in an nxn grid
implicit:
  the smallest star to handle is a 7x7 grid

TEST CASES
star(7)
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
star(9)
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

BREAKDOWN
*  *  *    #0S * 2S * 2S *
 * * *     #1S * 1S * 1S *
  ***      #2S * 0S * 0S *
*******
  ***
 * * *
*  *  *
*   *   *  #0S * 3S * 3S *
 *  *  *   #1S * 2S * 2S *
  * * *    #2S * 1S * 1S *
   ***     #3S * 0S * 0S *
*********
   ***
  * * *
 *  *  *
*   *   *

ALGORITHM
Given an input integer called `n`
Set an empty array equal to `rows`
Loop (iterate with #step) from (`n`-3)/2 to 0, where index is `i`
  Add "#{" " * (`n`-3)/2 - `i`}*#{' ' * i}*#{' ' * i}*" to `rows`
End loop
Add "#{'*' * n}" to `rows`
Push `rows`[0..-2].reverse to `rows`
puts `rows`


=end

def star(n)
  rows = []
  ((n-3)/2).step(0, -1) do |i|
    rows.append("#{' ' * ((n-3)/2 - i)}*#{' '*i}*#{' '*i}*")
  end
  rows.append("#{'*'*n}")
  rows.concat(rows[0..-2].reverse)
  puts rows
end

star(7)
star(9)

