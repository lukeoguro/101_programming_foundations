=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected
to exactly one light that is initially off. You walk down the row of switches and toggle
every one of them. You go back to the beginning, and on this second pass, you toggle
switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and
toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you
have been through n repetitions.
Write a method that takes one argument, the total number of switches, and returns an Array
that identifies which lights are on after n repetitions.

PROBLEM
input: integer (`n`; number of switches and number of repetitions)
output: Array of integers (identifies which lights are on)
explicit:
  write a method
  returns an Array that identifies which lights are on after n repetitions
implicit:
  switches are numbered from 1 to n
  1st pass, we toggle all
  2nd pass, we toggle 2, 4, 6
  3rd pass, we toggle 3, 6, 9
  repeat until n repetitions

TEST CASE
Example with n = 5 lights:
round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].
With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

DATA STRUCTURE
input: integer (n)
inter: Array (boolean)
output: Array of integers

ALGORITHM
Given an integer called `n`
Create array called `lights` that has true * `n`
Loop (iterate with #upto) from 2 to `n`, where index is `i`
  Loop (iterate with #step) from `i` to `n`, with step `i`, where index is `j`
    Set `lights[j-1]` to `!lights[j-1]`
  End inner loop
End outer loop
Loop (transform with #map.with_index(1)) over `lights`, where each element is `light`, index is `idx`
  If `light` is true
    Return `idx`
  End if statement
End loop
Call `#compact` on return value

=end

def toggle_lights(n)
  lights = [true] * n
  2.upto(n) do |i|
    i.step(n, i) do |j|
      lights[j-1] = !lights[j-1]
    end
  end
  lights.map.with_index(1) { |light, idx| idx if light }.compact
end

puts toggle_lights(5) == [1, 4]
puts toggle_lights(10) == [1, 4, 9]
puts toggle_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, \\
  225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]



