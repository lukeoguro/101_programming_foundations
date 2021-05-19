def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) == []
p my_method([3]) == [21]
p my_method([3, 4]) == [9, 16]
p my_method([5, 6, 7]) == [25, 36, 49]

=begin
The buggy program printed the results it did because the conditional expression
that was evaluated was `array#map`. The return value is truthy, and therefore the
branch gets executed. However, since there is nothing in the branch, `nil` is returned.
=end