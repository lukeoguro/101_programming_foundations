=begin
Write a method that will take a short line of text, and print it within a box.

PROBLEM
input: string
output: print to screen
explicit:
  write a method
  print it within a box
implicit:
  box is 5 lines vertical
  box is string length + 4 horizontal

TEST CASE
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+

ALGORITHM
Given a string called `line_of_text`
Create a variable called `length` equal to size of `line_of_text`
Print "+#{"-" * (length+2)}+"

=end

def print_in_box(line_of_text)
  length = line_of_text.size
  puts "+#{"-" * (length+2)}+"
  puts "|#{" " * (length+2)}|"
  puts "| #{line_of_text} |"
  puts "|#{" " * (length+2)}|"
  puts "+#{"-" * (length+2)}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
