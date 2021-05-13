=begin
Rewrite your recursive fibonacci method so that it computes its results without recursion.

PROBLEM
input: integer (n; nth Fibonacci number)
output: integer (Fibonacci number)
explicit:
  write a method
  return the nth Fibonacci number
implicit:
  the method needs to be non-recursive

TEST CASES
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

ALGORITHM
Given an integer called `nth`
Return 1 if nth == 1 or nth == 2
Set `n_minus_2`, `n_minus_1` = 1, 1
Set `counter` to 2
Loop
  `counter` += 1
  `n = n_minus_1 + n_minus_2`
  return `n` if `counter` is equal to `nth`
  `n_minus_2, n_minus_1 = n_minus_1, n`
End loop

=end

def fibonacci(nth)
  return 1 if nth == 1 || nth == 2
  n_minus_2, n_minus_1 = 1, 1
  counter = 2
  loop do
    counter += 1
    n = n_minus_1 + n_minus_2
    return n if counter == nth
    n_minus_2, n_minus_1 = n_minus_1, n
  end
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501
