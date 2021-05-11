=begin
Create a method that takes 2 arguments, an array and a hash. The array will contain 2 or more elements that,
when combined with adjoining spaces, will produce a person's name. The hash will contain two keys,
:title and :occupation, and the appropriate values. Your method should return a greeting that uses
the person's full name, and mentions the person's title and occupation.

PROBLEM
input (2): Array of strings (person's name); Hash (key is symbol, value is string)
output: print to screen
explicit:
  create a method
  return a greeting that uses the person's full name, and mentions the person's title and occupation
implicit:
  Person's name should be combined with spaces
  Hash will contain two keys, :title and :occupation

TEST CASES
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

=end

def greetings(name, description)
  "Hello, #{name.join(' ')}! Nice to have a #{description.values.join(' ')} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."