=begin
PROBLEM
Given this data structure write some code to return an array containing
the colors of the fruits and the sizes of the vegetables. The sizes
should be uppercase and the colors should be capitalized.

BREAKDOWN
If it's a fruit, add color. Capitalize
If it's a vegetable, add size. Uppercase size

ALGORITHM
Given an hash with fruit/vegetable information `hsh`
Create empty array called `return_arr`
Loop through elements of the hsh
  If it's a fruit, capitalize the `colors` in the array and append to array `return_arr`
  If it's a vegetable, uppercase the `size` string and append to array `return_arr`
End loop
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = hsh.map do |_, item|
  if item[:type] == 'fruit'
    item[:colors].map do |color|
      color.capitalize
    end
  else
    item[:size].upcase
  end
end

p new_arr