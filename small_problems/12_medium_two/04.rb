=begin
Write a method that takes a string as argument, and returns true if all parentheses
in the string are properly balanced, false otherwise. To be properly balanced, parentheses
must occur in matching '(' and ')' pairs.

PROBLEM
input: string
output: boolean (true if parentheses are balanced)
explicit:
  write a method
  return true if all parentheses in the string are properly balanced
implicit:
  a balanced parentheses occurs in matching '(' and ')' pairs

TEST CASES
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

BREAKDOWN
'((What) (is this))?'
'(()())' => true
'(()())'
'(  ())'
'(    )'
'      ' => true
'((What)) (is this))?'
'(())())' => false
'(  )())'
'    ())'
'      )' => false

ALGORITHM
Given a string called `input_string`
Create a string called `parentheses` set to `input_string.delete("A-Za-z")`
Start loop
  If `parentheses` is not equal to `parentheses#gsub`
    Set `parentheses` equal to `parentheses#gsub`
  Else
    If `parentheses` is an empty string, return true, false otherwise
  End if statement
End loop

=end

def balanced?(input_string)
  parentheses = input_string.delete("^()")
  loop do
    if parentheses != parentheses.gsub('()', '')
      parentheses = parentheses.gsub('()', '')
    else
      return parentheses == '' ? true : false
    end
  end
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
