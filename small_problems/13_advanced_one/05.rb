=begin
Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.

PROBLEM
input: Array of Arrays (arbitrary matrix)
output: Array of Arrays (rotate input 90 degrees clockwise)
explicit:
  write a method
  rotate the input matrix by 90 degrees clockwise
  return the matrix

TEST CASES
input matrix
1  5  8
4  7  2
3  9  6
output matrix
3  4  1
9  7  5
6  2  8
input matrix
3  4  1
9  7  5
output matrix
9  3
7  4
5  1

BREAKDOWN
1 matrix[0][0]
4 matrix[1][0]
3 matrix[2][0]
5 matrix[0][1]
7 matrix[1][1]
9 matrix[2][1]

3 matrix[0][0]
9 matrix[1][0]
4 matrix[0][1]
7 matrix[1][1]

ALGORITHM
Given an Array of Arrays called `matrix`
Create an empty array called `return_matrix`
Loop (iterate with #step) from 0 to number of columns minus 1, where index is `column_idx`
  Create empty array called `row`
  Loop (iterate with #step) from 0 to number of rows minus 1, where index is `row_idx`
    Prepend `matrix[row_idx][column_idx]` to `row`
  End inner loop
  Append `row` to `return_matrix`
End outer loop
Return `return_matrix`

=end

def rotate90(matrix)
  return_matrix = []
  0.step(matrix[0].size - 1) do |column_idx|
    new_row = []
    0.step(matrix.size - 1) { |row_idx| new_row.prepend(matrix[row_idx][column_idx]) }
    return_matrix.append(new_row)
  end
  return_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
