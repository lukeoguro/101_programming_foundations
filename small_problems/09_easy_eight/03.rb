=begin
Write a method that returns a list of all substrings of a string that start at the beginning of
the original string. The return value should be arranged in order from shortest to longest substring.

PROBLEM
input: string
output: array of strings (substrings of the original string)
explicit:
  write a method
  return a list of all substrings of a string
implicit:
  the return value should be arranged from shortest to longest substring

TEST CASES
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=end

def leading_substrings(string)
  substrings = []
  string.size.times do |idx|
    substrings.append(string[0..idx])
  end
  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']