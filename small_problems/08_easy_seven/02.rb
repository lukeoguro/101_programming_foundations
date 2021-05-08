=begin
Write a method that takes a string, and then returns a hash that contains 3 entries:
one represents the number of characters in the string that are lowercase letters,
one the number of characters that are uppercase letters, and one the number of characters that are neither.

PROBLEM
input: string
output: hash (3 entries; lowercase letters, uppercase letters, and neither)
explicit:
  write a method
  return a hash that contains 3 entries (lowercase letters, uppercase letters, and neither)
implicit:
  Spaces are counted as a character

TEST CASES
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

ALGORITHM
Given a string called `string`
Create a hash called `hash` with keys `:lowercase`, `:uppercase`, `:neither`
Loop (iteration with #each_char) over `string`, where each element is `char`
  If ('A'..'Z').include?(char)
    Add 1 to the `:uppercase` value
  elsif ('a'..'z').include?(char)
    Add 1 to the `:lowercase` value
  else
    Add 1 to the `:neither` value
  End
End
Return `hash`

=end

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |char|
    if ('A'..'Z').include?(char)
      hash[:uppercase] += 1
    elsif ('a'..'z').include?(char)
      hash[:lowercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }