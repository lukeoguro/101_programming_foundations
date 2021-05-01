number = 1

while true
  puts number if number.even?
  number += 1
  break if number == 99
end