=begin
Sort an array of passed in values using merge sort. You can assume that this array
may contain only one type of data. And that data may be either all numbers or all strings.

PROBLEM
input: Array of integers/strings (only one data type)
output: a new Array (sorted)
explicit:
  write a method
  sort an array of passed in values using merge sort
implicit:
  the array will only contain one type of data (number/strings)
  merge sort is a recursive sorting algorithm

TEST CASES
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

BREAKDOWN
[9, 5, 7, 1] ->               merge(merge_sort([9,5]), merge_sort([7,1]))
[[9, 5], [7, 1]] ->           merge(merge_sort([9])  , merge_sort(5    ))
[[[9], [5]], [[7], [1]]] ->   merge_sort([9]) will return [9]
[[5, 9], [1, 7]] ->           merge([9], [5]) will return [5,9]
[1, 5, 7, 9]                  merge([5,9], [1,7]) will return [1, 5, 7, 9]

ALGORITHM
Given an array called `arr`
Return the return value of `#merge(arr[0], arr[1])` if `arr.size == 2`
Set `mid` to `arr.size / 2`
If `arr.size.odd?`
  Call `#merge` on `merge_sort(arr[0,mid])` + `merge_sort(arr[mid, mid+1])`
Else
  Call `#merge` on `merge_sort(arr[0,mid])` + `merge_sort(arr[mid, mid])`
End if statement
=end

def merge(array1, array2)
  merged_array = []
  idx = 0
  array1.each do |i|
    until array2[idx..-1].empty? || array2[idx] > i
      merged_array.push(array2[idx])
      idx += 1
    end
    merged_array.push(i)
  end
  merged_array.concat(array2[idx..-1])
end

def merge_sort(arr)
  return arr if arr.size == 1
  mid = arr.size / 2
  merge(merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]))
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
