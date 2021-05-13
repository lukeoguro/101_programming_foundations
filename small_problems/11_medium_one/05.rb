=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer
that is supplied as an argument to the method. You may assume that the argument will always be an odd integer.

PROBLEM
input: integer (`n`, odd)
output: print to screen (4-pointed diamond)
explicit:
  write a method
  display a 4-pointed diamond in an n x n grid
implicit:
  n is an odd integer

TEST CASES
diamond(1)
*
diamond(3)
 *
***
 *
 diamond(9)
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

BREAKDOWN
diamond(5)
  *     # 2 space; 1 star; (`n` - `star`) / 2 = `space`
 ***    # 1 space; 3 star;
*****   # 0 space; 5 star;
 ***    # 1 space; 3 star;
  *     # 2 space; 1 star;

ALGORITHM
Given an integer called `n`
Loop (iterate with #step) from 1 to `n` (with step = 2), where index is `star`
  Print "#{" " * ((n - star) / 2)}#{"*" * star}"
End loop
Loop (iterate with #step) from `n - 2` to `1` (with step = -2), where index is `star`
  Print "#{" " * ((n - star) / 2)}#{"*" * star}"
End loop

=end

def diamond(n)
  1.step(n, 2) do |star|
    puts "#{" " * ((n - star) / 2)}#{"*" * star}"
  end
  (n-2).step(1, -2) do |star|
    puts "#{" " * ((n - star) / 2)}#{"*" * star}"
  end
end

def diamond(n)
  rows = []
  1.step(n, 2) do |star|
    rows.append("#{" " * ((n - star) / 2)}#{"*" * star}")
  end
  puts rows
  puts rows[0..-2].reverse
end

diamond(1)
diamond(3)
diamond(5)
diamond(9)
