# runaway loop:

loop do
  puts 'Just keep printing...'
  break
end

# loopception:

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    
    break
  end
  
  break
end

puts 'This is outside all loops.'

# control the loop:

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

# loop on comamnd:

#loop do
  #puts 'Should I stop looping?'
  #answer = gets.chomp
  #break if answer == 'yes'
  #puts "Answer 'yes' to leave the loop"
#end

# say hello:

say_hello = true
iterations = 1

while say_hello
  puts 'Hello!'
  iterations += 1
  say_hello = false if iterations > 5
end

# print while:

numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers

# count up:

count = 1

until count == 11
  puts count
  count += 1
end

# print until:

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end

# that's odd:

for i in 1..100
  puts i if i.odd?
end

# greet your friends:

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end