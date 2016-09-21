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

# mandatory blocks:

a = [1, 4, 8, 11, 15, 19]

p a.bsearch { |element| element > 8 }

# multiple signatures:

a = %w(a b c d e)
#puts a.fetch(7) # raises exception
puts a.fetch(7, 'beats me') # prevents an error of occurring, outputs beat me
puts a.fetch(7) { |index| index**2 } # also prevents an error, outputs the 
# index squared.

#keyword arguments:

p 5.step(to: 10, by: 3) { |value| puts value }

# parent class:

s = 'abc'
puts s.public_methods.inspect
puts s.public_methods(false).inspect 
# the difference is the inherited methods

# included modules:

a = [5, 9, 3, 11]
puts a.min

puts a.min(2)

# modules like Enumerable allows a class to inherit methods from more than its
# parent class. You can find it under the Included modules in Array.

# down the rabbit hole:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')



