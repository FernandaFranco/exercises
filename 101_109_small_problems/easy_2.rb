# how old is teddy?

# def input_name
#   puts "What's your name?"
#   gets.chomp.capitalize
# end

# def name(name)
#   name = "Teddy" if name == ''
#   name
# end

# age = rand(20..200)

# puts "#{name(input_name)} is #{age} years old!"

# how big is the room?

SQ_METER_TO_SQ_FT = 10.7639
SQ_FT_TO_SQ_INCHES = 144

# puts ">> Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts ">> Enter the width of the room in meters:"
# width = gets.chomp.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQ_METER_TO_SQ_FT).round(2)

# puts ">> The area of the room is #{square_meters} square meters" \
#      " (#{square_feet} square feet)."

# further exploration:

# puts ">> Enter the length of the room in feet:"
# length = gets.chomp.to_f

# puts ">> Enter the width of the room in feet:"
# width = gets.chomp.to_f

# square_feet = (length * width).round(2)
# square_inches = (square_feet * SQ_FT_TO_SQ_INCHES).round(2)
# square_cm = ((square_feet / SQ_METER_TO_SQ_FT) * 100).round(2)

# puts ">> The area of the room is #{square_feet} square feet" \
#      " (#{square_cm} square centimeters and #{square_inches} square inches)."

# tip calculator:

# puts ">> What is the bill?"
# bill = gets.chomp.to_f

# puts ">> What is the tip percentage?"
# percentage = gets.chomp.to_f

# tip = (percentage/100 * bill)
# total = (bill + tip)

# puts ">> The tip is $#{format("%.2f", tip)}."
# puts ">> The total is $#{format("%.2f", total)}."

#format("%.2f", 1234)

# when will i retire?

# puts "What's your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire_age = gets.chomp.to_i

# year = Time.now.year
# work_years = retire_age - age

# retire_year = year + work_years

# puts "It's #{year}. You will retire in #{retire_year}."
# puts "You only have more #{work_years} years to go!"

# greeting a user:

# puts "What is your name?"
# name = gets.chomp.capitalize

# if name[-1] == '!'
#   puts "hello #{name.chomp("!")}. why are we screaming?".upcase
# else
#   puts "Hello #{name}."
# end

# odd numbers:

# odd_numbers = (1..99).to_a.select do |number|
#                 number.odd?
#               end

# puts odd_numbers

# 1.upto(99) do |number|
#   puts number if number.odd?
# end

# even numbers

# 1.upto(99) do |number|
#   puts number if number.even?
# end

# sum or product of consecutive integers

# integer = 0
# loop do
#   puts "Please enter an integer greater than 0:"
#   integer = gets.to_i
#   break if integer > 0
#   puts "Sorry, wrong input."
# end

# choice = ''
# loop do
#   puts "Enter 's' to compute the sum, 'p' to compute the product of all " \
#        "integers between 1 and #{integer}:"
#   choice = gets.chomp.downcase
#   break if %w(p s).include?(choice)
#   puts "Sorry, must be 'p' or 's'."
# end


# result = (1..integer).reduce do |prev, curr|
#   choice == 'p' ? prev * curr : prev + curr
# end

# operation = 'sum'

# operation = 'product' if choice == 'p'

# puts "The #{operation} of the integers between 1 and #{integer} is #{result}."

# string assignment

name = 'Bob'

save_name = name

name.upcase!

puts name, save_name # output is BOB twice because both variables point to
# the same object. we mutated the object assigned to name with the bang method,
# so when we retrieve the object referenced by save_name we get the same object.

# mutation

array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # pass references to same objects
array1.each { |value| value.upcase! if value.start_with?('C') }
puts array2
puts array1

array1 = %w(Moe Larry Curly Chemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.clone } # references an object that is a copy
array1.each { |value| value.upcase! if value.start_with?('C') }
puts array2
puts array1
