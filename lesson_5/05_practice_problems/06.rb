=begin
PROBLEM
Given this previously seen family hash, print out the name, age and gender of each family member:
`(Name) is a (age)-year-old (male or female).`

BREAKDOWN
Obtain name, age, and gender of each family member
Print it out accordingly
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, hsh|
  puts "#{key} is a #{hsh["age"]}-year-old #{hsh["gender"]}."
end