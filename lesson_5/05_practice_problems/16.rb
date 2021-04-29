=begin
PROBLEM
A UUID is a type of identifier often used as a way to uniquely identify items...
which may not all be created by the same system. That is, without any form of
synchronization, two or more separate computer systems can create new items
and label them with a UUID with no significant chance of stepping on each other's toes.
It accomplishes this feat through massive randomization.
The number of possible UUID values is approximately 3.4 X 10E38.
Each UUID consists of 32 hexadecimal characters, and is typically broken into
5 sections like this 8-4-4-4-12 and represented as a string.
It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"
Write a method that returns one UUID when called with no parameters.

QUESTIONS
What's a hexadecimal character? From 0 to 9 and 'a' to 'f'

ALGORITHM
Create empty arr `sections`
Iterate through [8, 4, 4, 4, 12]
  Create uuid section with given length
  Append uuid section to `sections`
Join `sections` by `-` and return

SUB-ALGORITHM: how do you create a uuid section?
Create array of all hexadecimal characters
Call #sample method with given length
Return uuid section
=end


HEXADECIMALS = ("0".."9").to_a.concat(("a".."f").to_a)

def uuid
  sections = []
  [8, 4, 4, 4, 12].each do |length|
    sections << section(length)
  end
  sections.join('-')
end

def section(length)
  HEXADECIMALS.sample(length).join
end

p uuid