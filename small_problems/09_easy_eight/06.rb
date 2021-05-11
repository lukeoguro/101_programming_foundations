=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz",
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

PROBLEM
input (2): integers (starting number; ending number)
output: print to screen
explicit:
  write a method
  print all numbers between the inputs
    "FizzBuzz" if divisible by 3 and 5
    "Fizz" if divisible by only 3
    "Buzz" if divisible by only 5
implicit:
  NA

TEST CASES
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

ALGORITHM
Given two integers `starting_number` and `ending_number`
Loop (iteration with #step) from `starting_number` to `ending_number`, where index is `n`
  If `n` divisible by 3 and 5
    Print "FizzBuzz"
  else if `n` is divisible by 3
    Print "Fizz"
  else if `n` is divisible by 5
    Print "Buzz"
  else
    Print `n`
  End if statement
End loop

=end

def fizzbuzz(starting_number, ending_number)
  starting_number.step(ending_number) do |n|
    if n % 3 == 0 && n % 5 == 0
      puts "FizzBuzz"
    elsif n % 3 == 0
      puts "Fizz"
    elsif n % 5 == 0
      puts "Buzz"
    else
      puts n
    end
  end
end

fizzbuzz(1, 15)
