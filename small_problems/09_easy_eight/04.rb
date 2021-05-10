=begin
Write a method that returns a list of all substrings of a string. The returned list
should be ordered by where in the string the substring begins. This means that all
substrings that start at position 0 should come first, then all substrings that start
at position 1, and so on. Since multiple substrings will occur at each position,
the substrings at a given position should be returned in order from shortest to longest.

TEST CASES
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

BREAKDOWN
idx1: 0 -> 4
idx2: idx1 -> 4

ALGORITHM
Given a string called `string`
Create an empty array called `substrings`
Loop (iterate with #step) over size of `string` - 1, where index is `start_index`
  Loop (iterate with #step) from `start_index` to size of `string` minus 1, where index is `end_index`
    Append `string[start_index..end_index]` to `substrings`
  End loop
End loop

=end

def substrings(string)
  substrings = []
  0.step(string.size - 1) do |start_index|
    start_index.step(string.size - 1) do |end_index|
      substrings.append(string[start_index..end_index])
    end
  end
  substrings
end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

