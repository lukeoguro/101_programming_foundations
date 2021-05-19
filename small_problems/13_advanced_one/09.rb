=begin
Write two methods: one that takes a Rational number as an argument, and returns an Array
of the denominators that are part of an Egyptian Fraction representation of the number,
and another that takes an Array of numbers in the same format, and calculates the resulting
Rational number. You will need to use the Rational class provided by Ruby.

PROBLEM (1)
input: a Rational number
output: Array of integers
explicit:
  write a method
  return an Array of the denominators that are part of the Egyptian Fraction representation
implicit:
  method must use the Rational class by Ruby
  Rational number is the result of dividing the numerator by the denominator
  Unit fraction is where the numerator is 1
  Egyptian fraction is the sum of distinct unit fractions

TEST CASES (1)
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

ALGORITHM (1)
Given a Rational number `rational_number`
Create an empty array called `denominators`
Create a variable called `current_sum` set it to 0
Loop (iterate with #step) from 1 to infinity (nil), where index is `denominator`
  If `current_sum` plus `Rational(1, denominator)` is <= to `rational_number`
    Push `denominator` to `denominators`
    Set `current_sum` to `current_sum` plus `Rational(1, denominator)`
  End if statement
  Break loop if `current_sum` is equal to `rational_number`
End loop
Return `denominators`

=end

def egyptian(rational_number)
  denominators = []
  current_sum = 0
  1.step(nil) do |denominator|
    if current_sum + Rational(1, denominator) <= rational_number
      denominators.push(denominator)
      current_sum += Rational(1, denominator)
    end
    break if current_sum == rational_number
  end
  denominators
end

def unegyptian(denominators)
  denominators.inject(0) do |sum, denominator|
    sum + Rational(1, denominator)
  end
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)