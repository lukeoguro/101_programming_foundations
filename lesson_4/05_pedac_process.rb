=begin
PROBLEM:
Imagine a sequence of consecutive even integers beginning with 2.
The integers are grouped in rows, with the first row containing one integer,
the second row two integers, the third row three integers, and so on.
Given an integer representing the number of a particular row,
return an integer representing the sum of all the integers in that row.

QUESTION:
1. What is the range of the integer input?

BREAKDOWN:
input: integer
output: integer
rules:
  explicit:
    return the sum of integers in row n of sequence of consecutive even integers
  implicit:
    range of integer is greater or equal to 1

VISUALIZATION:
2,
4, 6,
8, 10, 12,
14, 16, 18, 20,

TEST CASES:
sum_of_row(1) => 2
sum_of_row(2) => 10
sum_of_row(4) => 68

DATA STRUCTURE:
[
  [2],              length_of_row = 1, starting_int = 2
  [4, 6],           length_of_row = 2, starting_int = 4
  [8, 10, 12],      length_of_row = 3, starting_int = 8
  [14, 16, 18, 20]  length_of_row = 4, starting_int = 14
]

ALGORITHM:
- given integer `final_row`
- initialize empty `rows` array
- initialize `row_number` variable at 1
- starting_int = 2
- begin loop that iterates `row_number` from (1) to (`final_row`)
  - create `row` array (#create_row)
  - add row to `rows`
  - `row_number` += 1
  - `starting_int` = `row`.last
- end loop
- return `rows`.last.sum

ALGORITHM for #create_row:
- given `length_of_row`, `starting_int`
- initialize empty `result_arr` array
- `current_int` = `starting_int`
- begin while loop (row.length < `length_of_row`)
  - `result_arr` << `current_int`
  - `current_int` += 2
- end loop
return `result_arr`

=end

def sum_of_row(row_number)
  rows = []
  current_row_number = 1
  starting_int = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(current_row_number, starting_int)
    starting_int = rows.last.last + 2
  end
  rows.last.sum
end

def create_row(length_of_row, starting_int)
  row = []
  current_int = starting_int
  while row.length < length_of_row
    row << current_int
    current_int += 2
  end
  row
end

p sum_of_row(1) == 2
p sum_of_row(2) == 10
p sum_of_row(4) == 68
