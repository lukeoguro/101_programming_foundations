statement = "The Flintstones Rock"

frequency_hash = {}
statement.delete(" ").chars.each do |char|
  if frequency_hash.has_key?(char)
    frequency_hash[char] += 1
  else
    frequency_hash[char] = 1
  end
end

puts frequency_hash