=begin
Modify the method from the previous exercise so it ignores non-alphabetic characters when
determining whether it should uppercase or lowercase each letter. The non-alphabetic characters
should still be included in the return value; they just don't count when toggling the desired case.

=end

def staggered_case(original_string)
  return_string = ''
  toggle_case = true
  original_string.each_char do |char|
    if char.count('A-Za-z') == 1
      toggle_case ? return_string.concat(char.upcase) : return_string.concat(char.downcase)
      toggle_case = !toggle_case
    else
      return_string.concat(char)
    end
  end
  return_string
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'