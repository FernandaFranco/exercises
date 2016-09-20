# methods without arguments:

string = 'xyz'

uppercase_string = string.upcase

p uppercase_string

# required arguments:

a = %w(a b c d e)
p a.object_id

a.insert(3, 5, 6, 7)

p a
p a.object_id

# optional arguments:

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect # => split on white space " "
puts s.split(',').inspect # => split at comma
puts s.split(',', 2).inspect # => split in two strings Sat first commma

# optional arguments redux:

require 'date'

puts Date.new # => creates a new date object
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)