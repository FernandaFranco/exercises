# how old is teddy?

def input_name
  puts "What's your name?"
  gets.chomp.capitalize
end

def name(name)
  name = "Teddy" if name == ''
  name
end

age = rand(20..200)

puts "#{name(input_name)} is #{age} years old!"