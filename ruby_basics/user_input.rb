# # repeat after me:

# puts "=> Please say something:"
# answer = gets.chomp
# puts answer

# # age in months:

# puts "=> What is your age (in years)?"
# answer = gets.chomp
# puts "Your age is #{answer.to_i * 12} in months."

# # print something part 1:

# puts "=> Do you want me to print something? (y/n)"
# answer = gets.chomp.downcase

# puts "=> something" if answer == 'y'

# print something part 2:

# loop do
#   puts "=> Print something? (y/n)"
#   answer = gets.chomp.downcase
  
#   if answer == 'y'
#     puts "=> Something."
#     break
#   elsif answer == 'n'
#     break
#   end
  
#   puts "=> Invalid answer. Please type 'y' or 'n'."
# end

# # OR

# answer = nil

# loop do
#   puts "=> Print something, again? (y/n)"
#   answer = gets.chomp.downcase
  
#   break if %w(y n).include?(answer)

#   puts "=> Invalid answer. Please type 'y' or 'n'."
# end

# puts "=> something." if answer == 'y'

# # launch school printer part 1:

# loop do
#   puts "=> How many lines do you wanna print? (min of 3 lines)"
#   number = gets.chomp.to_i
  
#   if number >= 3
#     number.times { puts "=> Launch School is the best!" }
#     break
#   end
  
#   puts "Invalid choice. Please choose a number >= 3"
  
# end

# # passwords:
# PASSWORD = 'SecreT'

# loop do
#   puts "Please enter your password:"
#   user_input = gets.chomp
  
#   break if user_input == PASSWORD
#   puts "Invalid password. Password is case-sensitive."
# end

# puts "Welcome!"

# # username and password:

# PASSWORD = 'SecreT'
# USERNAME = 'admin'
# loop do
#   puts "Please enter your username:"
#   username_input = gets.chomp.downcase
#   puts "Please enter your password:"
#   password_input = gets.chomp
  
#   break if username_input == USERNAME && password_input == PASSWORD
#   puts "Incorrect username and/or password. Try again."
# end

# puts "Welcome!"

# # dividing numbers:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil

# loop do
#   puts "Please enter the numerator:"
#   numerator = gets.chomp
  
#   break if valid_number?(numerator)
#   puts "Invalid input. Please enter integers only."
# end
  
# loop do
#   puts "Now enter the denominator:"
#   denominator = gets.chomp
  
#   break if valid_number?(denominator) && denominator != '0'
#   puts "Invalid input. Please enter non-zero integers only."
# end

# division = numerator.to_i / denominator.to_i
# puts "#{numerator}/#{denominator} is #{division}"

# # launch school printer part 2:

# loop do
#   number_of_lines = nil
  
#   loop do
#     puts '>> How many output lines do you want? ' \
#         'Enter a number >= 3 (Press Q to quit):'
#     number_of_lines = gets.chomp
#     break if number_of_lines.to_i >= 3 || number_of_lines.downcase == 'q'
#     puts ">> That's not enough lines."
#   end
  
#   count = number_of_lines.to_i
#   while count > 0
#     puts 'Launch School is the best!'
#     count -= 1
#   end
  
#   break if number_of_lines.downcase == 'q'
# end

# puts ">> Ciao!"

# opposites attract:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# first = nil
# second = nil
  
# loop do
#   first_value = 'positive'
#   exit = true
  
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     first = gets.chomp
    
#     if valid_number?(first)
#       unless first.to_i.abs == first.to_i
#         first_value = 'negative'
#       end
#       break
#     end
    
#     puts ">> Invalid number. Only non-zero integers are allowed."
#   end
    
#   loop do  
#     puts ">> Now enter a negative or positive integer:"
#     second = gets.chomp
    
#     if valid_number?(second)
#       if second.to_i.abs == second.to_i && first_value == 'positive'
#         exit = false
#         puts ">> Sorry, one integer must be positive, one must be negative."
#       end
#       break
#     end
    
#     puts ">> Invalid number. Only non-zero integers are allowed."
#   end
  
#   break if exit
  
#   puts ">> Please start over."
# end

# sum = first.to_i + second.to_i
# puts "#{first.to_i} + #{second.to_i} is #{sum}."

# OR:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def enter_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    number = gets.chomp
      
    return number.to_i if valid_number?(number)
    puts ">> Invalid number. Only non-zero integers are allowed."
  end  
end

first = nil
second = nil

loop do
  first = enter_number
  second = enter_number
  
  break unless first * second > 0 
  
  puts ">> Sorry, one integer must be positive, one must be negative."
  puts ">> Please start over."
end

sum = first + second
puts "#{first} + #{second} is #{sum}."


