=begin
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

PROBLEM
input (2): integer (+); boolean (true, false)
output: integer (bonus)
explicit:
  write a method
  calculate the bonus for a given salary
  bonus is either half the salary, or 0, based on the boolean

TEST CASES
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

DATA STRUCTURE
input: integer (+)
inter: NA
output: integer (bonus)

ALGORITHM
Given integer `salary` and boolean `bonus_boolean`
Ternary operator
  If boolean is true: return half of salary
  Else: return 0
end
=end

def calculate_bonus(salary, bonus_boolean)
  bonus_boolean ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000