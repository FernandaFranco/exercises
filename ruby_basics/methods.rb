def hello
  "Hello"
end

def world
"World"
end

puts "#{hello} #{world}"

def greet
  "#{hello} #{world}"
end

puts greet

def car(make, model)
  puts "#{make} #{model}"
end

car('Toyota', 'Corolla')

def time_of_day(sun)
  if sun
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

daylight = [true, false].sample

time_of_day(daylight)

def dog(name)
  return name
end

def cat
  return "Ginger"
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."

def assign_name(name = 'Bob')
  name
end

puts assign_name == 'Bob'
puts assign_name('Kevin') == 'Kevin'

def add(number_1, number_2)
  number_1 + number_2
end

def multiply(number_1, number_2)
  number_1 * number_2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(person, doing)
  person + ' went ' + doing + ' today!'
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))

def print_me
  puts "I'm printing whitin the method!"
end

print_me

def print_me
  "I'm printing the return value of the method!"
end

puts print_me

