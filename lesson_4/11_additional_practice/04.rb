ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

minimum_age = ages.shift.last
ages.values.each do |age|
  minimum_age = age if age < minimum_age
end

puts minimum_age
