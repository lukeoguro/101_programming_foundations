=begin
Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

PROBLEM
input: integer (n; nth Fibonacci number)
output: integer (Fibonacci number)
explicit:
  write a method
  return the nth Fibonacci number
implicit:
  the method needs to be recursive

TEST CASES
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765

BREAKDOWN
Return 1 if `n` is 1 or 2
Call `fibonacci(n-1)` `fibonacci(1)`

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n-1) + fibonacci(n-2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765