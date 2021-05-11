=begin
Write a method that takes a first name, a space, and a last name passed as a single String argument,
and returns a string that contains the last name, a comma, a space, and the first name.

PROBLEM
input: string (first name; space; last name)
output: string (last name; comma; space; first name)
explicit:
  write a method
  return a string that contains the last name, a comma, a space, and the first name
implicit:
  NA

TEST CASES
swap_name('Joe Roberts') == 'Roberts, Joe'

=end

def swap_name(name)
  "#{name.split.last}, #{name.split.first}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
