=begin
Write a method that takes a sentence string as input, and returns the same string
with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six',
'seven', 'eight', 'nine' converted to a string of digits.

PROBLEM
input: string
output: same string (words converted to digits)
explicit:
  write a method
  return the same string with any sequence of words (0..9) converted to digits

TEST CASES
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

ALGORITHM
Given an input string called `sentence`
Initialize constant Hash called `NUMBERS` that has a key value of `zero` => 0, ...
Loop (iterate with #each_key) over `NUMBERS`, where each element is `number`
  Create variable called `length` set to `number` length
  Loop
    Set variable `idx` to `sentence.index(number)`
    If `idx` is an integer
      Call `sentence[idx...idx+length] = NUMBERS[number]`
    else
      break
    end
  End
End
Return sentence
=end

NUMBERS = {
  'zero' => 0,
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9
}

def word_to_digit(sentence)
  NUMBERS.each_key do |number|
    length = number.size
    loop do
      idx = sentence.index(number)
      idx.nil? ? break : sentence[idx...idx+length] = NUMBERS[number].to_s
    end
  end
  sentence
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
