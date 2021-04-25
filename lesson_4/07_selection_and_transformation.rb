=begin
PROBLEM:
select all key-value pairs where the value is "Fruit"

ALGORITHM:
- Given original hash `produce_list`
- Initialize variable named `produce_keys`
- Set counter equal to 0
- Initialize hash named `selected_fruits`
- Begin loop
  - break if counter == produce_keys.size
  - Set `current_key` to produce_keys[counter]
  - Set `current_value` to produce_list[current_key]
  - Append key-value to `selected_fruits`
  - counter += 1
- end
- Return `selected_fruits`
=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_hash)
  produce_keys = produce_hash.keys
  counter = 0
  selected_fruits = {}
  loop do
    break if counter == produce_keys.size
    current_key = produce_keys[counter]
    current_value = produce_hash[current_key]
    selected_fruits[current_key] = current_value if current_value == "Fruit"
    counter += 1
  end
  selected_fruits
end

p select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}

=begin
PROBLEM:
Mutate an array such that all numbers are doubled

ALGORITHM:
- initialize `counter` to 0
- begin loop
  - break if counter == numbers.size
  - numbers[counter] *= 2
  - counter += 1
- end loop
- return array
=end

def double_numbers!(numbers)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= 2
    counter += 1
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers!(my_numbers)   # => [2, 8, 6, 14, 4, 12]
p my_numbers == [2, 8, 6, 14, 4, 12]

=begin
PROBLEM:
Given an array, doubles the numbers that have odd indices

ALGORITHM:
- initialize `counter` equal to 0
- initialize `result_arr` equal to empty array
- begin loop
  - break if counter == numbers.size
  - if counter.odd?
    - `result_arr` << numbers[counter] * 2
  - else
    - `result_arr` << numbers[counter]
  - end
  - counter += 1
-end loop
- return result_arr
=end

my_numbers = [1, 4, 3, 7, 2, 6]

def double_odd_indices(numbers)
  counter = 0
  result_arr = []
  loop do
    break if counter == numbers.size
    counter.odd? ? (result_arr << numbers[counter] * 2) : (result_arr << numbers[counter])
    counter += 1
  end
  result_arr
end

p double_odd_indices(my_numbers) == [1, 8, 3, 14, 2, 12]


=begin
PROBLEM:
Create a method that multiplies each number in the given array by any given number

ALGORITHM:
- initialize `counter` to 0
- initialize `result_arr` to empty array
- begin loop that iterates through counter until `counter` == array.size
  - Append numbers[counter] * multiple to `result_arr`
  - `counter` += 1
- end loop
- return `result_arr`
=end

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers_arr, multiple)
  counter = 0
  result_arr = []
  loop do
    break if counter == numbers_arr.size
    result_arr << numbers_arr[counter] * multiple
    counter += 1
  end
  result_arr
end

p multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18]

