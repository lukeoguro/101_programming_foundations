=begin
Write a method that takes an Array as an argument, and sorts that Array using the
bubble sort algorithm as just described. Note that your sort will be "in-place";
that is, you will mutate the Array passed as an argument. You may assume that the
Array contains at least 2 elements.

PROBLEM
input: Array
output: no return value necessary
explicit:
  write a method
  sort the array "in-place" (mutate the array)
implicit:
  Array will contain at least 2 elements

array = [5, 3]
bubble_sort!(array)
array == [3, 5]
array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

ALGORITHM
Given an array called `arr`
Loop
  Create a boolean variable called `sorted` set to `false`
  Loop (iterate with #upto) from 0 to `arr.size - 2`, where index is `i`
    If `arr[i] <=> arr[i+1] == 1`
      Set `sorted` to true
      arr[i+1], arr[i] = arr[i], arr[i+1]
    End if statement
  End inner loop
  Return if `sorted` is false
End loop

=end

def bubble_sort!(arr)
  loop do
    sorted = false
    0.upto(arr.size - 2) do |i|
      if (arr[i] <=> arr[i+1]) == 1
        sorted = true
        arr[i+1], arr[i] = arr[i], arr[i+1]
      end
    end
    return if sorted == false
  end
end

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]
array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]
array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)