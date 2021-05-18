=begin

TEST CASES
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

BREAKDOWN
[[1, 2, 3, 4]]
1 matrix[0][0]
2 matrix[0][1]
3 matrix[0][2]
4 matrix[0][3]

[[1], [2], [3], [4]]
1 matrix[0][0]
2 matrix[1][0]
3 matrix[2][0]
4 matrix[3][0]

=end

def transpose(matrix)
  new_matrix = []
  0.step(matrix[0].size-1) do |j|
    row = []
    0.step(matrix.size-1) { |i| row.push(matrix[i][j]) }
    new_matrix.push(row)
  end
  new_matrix
end

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]
