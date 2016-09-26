pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]

puts "I have a pet #{my_pet}!"

my_pets = pets[2...4]

p my_pets
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

my_pets.pop
puts "I have a pet #{my_pets[0]}!"

my_pets << pets[1]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

colors = ['red', 'yellow', 'purple', 'green']
colors.each do |color|
  puts "I'm the color #{color}!"
end

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |number|
                    number * 2
                  end

p doubled_numbers

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select do |number|
                       number % 3 == 0
                     end

p divisible_by_three

['Dave', 7, 'Miranda', 3, 'Jason', 11]

[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favorites = favorites.flatten

p flat_favorites

array1 = [1, 5, 9]
array2 = [1, 5, 9]

p (array1 <=> array2) == 0
p array1 == array2