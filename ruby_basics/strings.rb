empty_string = String.new

p empty_string

puts 'It\'s now 12 o\'clock.'
puts %q(It\'s now 12 o\'clock.) # Doesn't escape
puts "It's now 12 o'clock."
puts %Q(It's now 12 o'clock)

puts 'Hello\nworld'
puts "Hello\nworld"

puts %Q(It's now 12 o'clock but he "ain't coming home".)

name = 'Roger'

puts name.downcase == 'RoGeR'.downcase
puts name.downcase == 'DAVE'.downcase
puts name.casecmp('RoGer') == 0
puts name.casecmp('DAVE') == 0

name = 'Elizabeth'

puts "Hello, #{name}!"

first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name
puts full_name

state = 'tExAs'
state.capitalize!
puts state

greeting = 'Hello!'
puts greeting

greeting.gsub!('Hello!', 'Goodbye!')
puts greeting

alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

words = 'car human elephant airplane'
words_array = words.split(" ")
words_array.each do |word|
  puts word + 's'
end

colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.split(' ').include?('purple')

colors = 'blue boredom yellow'
puts colors.include?('red')
puts colors.split(' ').include?('red')