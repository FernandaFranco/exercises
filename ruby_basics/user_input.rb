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

# launch school printer part 1:

loop do
  puts "=> How many lines do you wanna print? (min of 3 lines)"
  number = gets.chomp.to_i
  
  if number >= 3
    number.times { puts "=> Launch School is the best!" }
    break
  end
  
  puts "Invalid choice. Please choose a number >= 3"
  
end
