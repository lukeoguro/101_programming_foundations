# Pseudo Code

## 1. a method that returns the sum of two integers

```shell
Given two integers, num1 and num2.

Return num1 + num2.
```

```shell
START

# Given two integers, "num1" and "num2"

SET result = num1 + num2
PRINT result

END
```

## 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

```shell
Given an array of strings.

Initialize an empty string as the starting value.

Iterate through the array one by one.
  For each iteration, append the string to the starting value.

After iterating through the array, return the starting value.
```

```shell
START

# Given an array of strings called "array"

SET strings = ""
SET iterator = 0

WHILE iterator < length of array
  SET string = value at array at space "iterator"
  
  strings << string
  iterator += 1

PRINT strings

END  
```

## 3. a method that takes an array of integers, and returns a new array with every other element

```shell
Given an array of integers.

Initialize an empty array.

Iterate through the array one by one with index.
  Append the value to the new array if index is even
    
After iterating through the array, return the new array.
```

```shell
START

# Given an array of integers called "array"

SET new_array = []
SET iterator = 0

WHILE iterator < length of array
  SET integer = value at array at space "iterator"
  new_array << integer

  iterator += 2

PRINT new_array

END
```
