=begin
A collection of spelling blocks has two letters per block, as shown in this list:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
This limits the words you can spell with the blocks to just those words that do not
use both letters from any given block. Each block can only be used once.
Write a method that returns true if the word passed in as an argument can be spelled
from this set of blocks, false otherwise.

PROBLEM
input: string (word)
output: boolean (true if the word can be spelled with spelling blocks)
explicit:
  write a method
  return true if the input word can be spelled from the set of blocks
implicit:
  case-insensitive

TEST CASES
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURE
input: string
inter: Array
output: boolean

ALGORITHM
Given a constant array called `BLOCKS`
Given an input string called `word`
Create local variable called `blocks` that is duplicated from `BLOCKS`
Loop (iterate with #each_char) over `word`, where each element is `char`
  If `char` upcase is included as one of the blocks
    Remove block from `blocks`
  Else
    Return false
  End if statement
End loop
Return true

=end

BLOCKS = %w(B:O X:K D:Q C:P N:A G:T R:E F:S J:W H:U V:I L:Y Z:M)

def block_word?(word)
  blocks = BLOCKS.dup
  word.each_char do |char|
    return false unless blocks.join.include?(char.upcase)
    blocks.delete_if { |block| block.include?(char.upcase) }
  end
  true
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true
