=begin
PROBLEM:
Given a string, write a method change_me which returns the same
string but with all the words in it that are palindromes uppercased.

TEST CASES:
change_me("We will meet at noon") == "We will meet at NOON"
change_me("No palindromes here") == "No palindromes here"
change_me("") == ""
change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

BREAKDOWN:
input: string
output: string (not the same object)
rules:
  explicit:
    each palindrome in the string must be converted to uppercase
  implicit:
    empty string should return an empty string
    palindromes are case-sensitive
    returned string shouldn't be the same object

=end



=begin
PROBLEM:
Given a string, write a method `palindrome_substrings` which returns
all the substrings from a given string which are palindromes. Consider
palindrome words case sensitive.

TEST CASES:
palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
palindrome_substrings("palindrome") == []
palindrome_substrings("") == []

QUESTIONS:
1. What is a substring?
2. What is a palindrome?
3. Can we assume the input will always be a string?
4. What does it mean to treat palindromes as case sensitive?

BREAKDOWN:
input: string
output: array
rules:
  explicit:
    return palindrome substrings in an array
  implicit:
    return empty array if the string is empty
    treat palindromes as case sensitive

ALGORITHM:
- initialize a result variable to an empty array
- create an array that includes all substrings of the main string (#substrings)
- loop through the substrings array
- append the substring to the result array if its a palindrome (#is_palindrome?)
- return result array

EXAMPLE for #substrings:
"halo" => [ "ha", "hal", "halo",  #slice(0, 2), #slice(0, 3), #slice(0, 4)    starting_index = 0, num_chars = 2...4
            "al", "alo",          #slice(1, 2), #slice(1, 3)                  starting_index = 1, num_chars = 2...3
            "lo" ]                #slice(2, 2)                                starting_index = 2, num_chars = 2...2

ALGORITHM for #substrings:
- create an empty `result` array
- initialize `starting_index` variable at (0)
- begin outer loop that iterates `starting_index` from (0) to (length - 2)
  - initialize `num_chars` variable a (2)
  - begin inner loop that iterates `num_chars` from (2) to (length - `starting_index`)
    - call #slice(`starting_index`, `num_chars`) onto initial string
    - append result to empty `result` array
    - `num_chars` += 1
  - end inner loop
  - `starting_index` += 1
- end outer loop
- return `result`

=end

def palindrome_substrings(str)
  result_arr = []
  substrings_arr = substrings(str)

  substrings_arr.each do |substring|
    result_arr << substring if is_palindrome?(substring)
  end

  result_arr
end

def substrings(str)
  result_arr = []
  starting_index = 0
  while starting_index <= (str.length - 2)
    num_chars = 2
    while num_chars <= (str.length - starting_index)
      result_arr << str.slice(starting_index, num_chars)
      num_chars += 1
    end
    starting_index += 1
  end
  result_arr
end

def is_palindrome?(str)
  str.reverse == str
end

# Test cases
puts palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
puts palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
puts palindrome_substrings("palindrome") == []
puts palindrome_substrings("") == []

# Note: testing another iterator
# def substrings(str)
#   result_arr = []
#   (0..(str.length - 2)).each do |starting_index|
#     (2..(str.length - starting_index)).each do |num_chars|
#       result_arr << str.slice(starting_index, num_chars)
#     end
#   end
#   result_arr
# end