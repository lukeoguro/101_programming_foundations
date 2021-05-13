=begin
In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.
=end

def fibonacci_last(nth)
  return 1 if nth <= 2
  n_minus_1, n = 1, 1
  3.upto(nth) do
    n_minus_1, n = n, (n_minus_1 + n) % 10
  end
  n % 10
end

puts fibonacci_last(15)          == 0 #  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)          == 5 # (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)         == 5 # (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)     == 1 # (this is a 20899 digit number)
puts fibonacci_last(1_000_007)   == 3 # (this is a 208989 digit number)
puts fibonacci_last(123456789)   == 4 #