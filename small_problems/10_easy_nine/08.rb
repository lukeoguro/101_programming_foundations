=begin
Write a method that determines the mean (average) of the three scores passed to it,
and returns the letter value associated with that grade. Tested values are all between 0 and 100.
There is no need to check for negative values or values greater than 100.

PROBLEM
input (3): integers (test scores)
output: string (letter grade of all tests)
explicit:
  write a method
  determine the mean of the three scores
  return the letter grade associated with the mean
implicit:
  test values are all between 0 to 100
  do not need to check for values less than 0 and greater than 100

TEST CASES
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

ALGORITHM
Given 3 integers `score1` `score2` `score3`
Set `mean` equal to sum of scores divided by 3 (float)
Case statement
  when `(90...100).include?(mean)` then A
  when `(80... 90).include?(mean)` then B
  when `(70... 80).include?(mean)` then C
  when `(60... 70).include?(mean)` then D
  when `( 0... 60).include?(mean)` then F
end case statement

=end

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3.0
  case mean
  when (90...100) then 'A'
  when (80... 90) then 'B'
  when (70... 80) then 'C'
  when (60... 70) then 'D'
  when ( 0... 60) then 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"
