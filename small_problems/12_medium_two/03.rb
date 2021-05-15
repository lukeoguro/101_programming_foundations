=begin
In the easy exercises, we worked on a problem where we had to count the number of uppercase and lowercase
characters, as well as characters that were neither of those two. Now we want to go one step further.
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the
percentage of characters in the string that are lowercase letters, one the percentage of characters that
are uppercase letters, and one the percentage of characters that are neither.
You may assume that the string will always contain at least one character.

PROBLEM
input: string (with uppercase, lowercase, and neither)
output: hash (keys of lowercase, uppercase, and neither; values that are percentages)
explicit:
  write a method
  return a hash that contains 3 entries (u, l, n)
implicit:
  string will always contain at least one character

TEST CASES
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

ALGORITHM
Given an input called `input_string`
Create a hash called `number_of_letters`
Create a variable called `total_letters` set to length of `input_string`
Loop (iterate with #each_char) over `input_string`, where each element is `char`
  If char is uppercase (`('A'..'Z').include?(char)`)
    Add 1 to `:uppercase` value of `number_of_letters`
  else if char is lowercase
    Add 1 to `:lowercase` value of `number_of_letters`
  else
    Add 1 to `:neither` value of `number_of_letters`
  End if statement
End loop
Loop (transform with #map) over `number_of_letters`, where key, value is `letter_type, num_of_letters`
  Create variable called `percentage` set to `num_of_letters.to_f * 100 / total_letters`
  If `percentage` is a whole number (`percentage % 1 == 0`)
    [`letter_type`, `percentage.to_i`]
  Else
    [`letter_type`, `percentage`]
  End if statement
End loop
Call #to_h on return value
=end

def letter_percentages(input_string)
  number_of_letters = { lowercase: 0, uppercase: 0, neither: 0 }
  total_letters = input_string.length
  input_string.each_char do |char|
    if ('A'..'Z').include?(char)
      number_of_letters[:uppercase] += 1
    elsif ('a'..'z').include?(char)
      number_of_letters[:lowercase] += 1
    else
      number_of_letters[:neither] += 1
    end
  end
  number_of_letters.map do |letter_type, num_of_letters|
    percentage = num_of_letters.to_f * 100 / total_letters
    [letter_type, percentage]
  end.to_h
end

puts letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
puts letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
