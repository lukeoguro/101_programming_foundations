=begin
PROBLEM
How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

BREAKDOWN
Given an array of hashes with book information
Sort the hashes in the array such that the earliest published book comes first
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
books.sort_by! do |item|
  item[:published]
end

puts books
