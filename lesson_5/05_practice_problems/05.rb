=begin
PROBLEM
Figure out the total age of just the male members of the family

BREAKDOWN
For all male members of the family
Sum up all the ages
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

ages = 0
munsters.each_value do |item|
  ages += item["age"] if item["gender"] == "male"
end

puts ages