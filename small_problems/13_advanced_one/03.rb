=begin
Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the
transpose of the original matrix. Note that there is a Array#transpose method that does this --
you may not use it for this exercise. You also are not allowed to use the Matrix class from the
standard library. Your task is to do this yourself. Take care not to modify the original matrix:
  you must produce a new matrix and leave the original matrix unchanged.

PROBLEM
input: Array of Arrays (3 x 3)
output: Array of Arrays (transposed input)
explicit:
  write a method
  return the transpose of the original matrix
implicit:
  do not use the Array#transpose method
  do not use the Matrix class
  do not mutate the original matrix

TEST CASES
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = [
  [1, 4, 3],
  [5, 7, 9],
  [8, 2, 6]
]

BREAKDOWN
1 matrix[0][0]
4 matrix[1][0]
3 matrix[2][0]
5 matrix[0][1]
7 matrix[1][1]
9 matrix[2][1]

ALGORITHM
Given Array of Arrays called `matrix`
Create `new_matrix` set to an empty array
Loop (iterate with #step) from 0 to 2, where index is `j`
  Set `row` to empty array
  Loop (iterate with #step) from 0 to 2, where index is `i`
    Append `matrix[i][j]` to `row`
  End inner loop
  Append `row` to `new_matrix`
End outer loop
Return `new_matrix`

=end

def transpose(matrix)
  new_matrix = []
  0.step(2) do |j|
    row = []
    0.step(2) { |i| row.push(matrix[i][j]) }
    new_matrix.push(row)
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]