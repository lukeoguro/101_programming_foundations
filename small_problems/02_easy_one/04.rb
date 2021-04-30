=begin
Write a method that counts the number of occurrences of each element in a given array.

PROBLEM
input: array (element: string)
output: print to screen (print the number of occurrences of each string in array)
explicit:
  write a method
  count the number of occurrences of each element
  output this to screen
implicit:
  case-sensitive

TEST CASE
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurrences(vehicles)
car => 4
truck => 3
SUV => 1
motorcycle => 2

DATA STRUCTURES
input: array (element: string)
inter: hash (key: string (string in array), value: integer (sum))
end: print to screen

ALGORITHM
Given an array of strings `arr`
Create an empty hash `occurrences`
Loop through string in `arr` (iteration)
  If `#has_key?` method returns true
    Add 1 to the number of occurrences
  else
    Create a new key-value pair where key is string and value is 1
  end
end
Loop through hash `occurrences` (iteration)
  puts key value to string in the given format
end
=end

def count_occurrences(arr)
  occurrences = {}
  arr.each do |str|
    if occurrences.has_key?(str)
      occurrences[str] += 1
    else
      occurrences[str] = 1
    end
  end
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

