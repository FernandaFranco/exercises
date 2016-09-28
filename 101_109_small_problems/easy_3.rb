#-- searching 101:

# POSITIONS = %w(1st 2nd 3rd 4th 5th)
# five_numbers = []

# POSITIONS.each do |position|
#   puts "==> Enter the #{position} number:"
#   number = gets.chomp.to_i
#   five_numbers << number
# end

# puts "==> Enter the last number:"
# last_number = gets.chomp.to_i

# if five_numbers.include?(last_number)
#   puts "==> The number #{last_number} appears in #{five_numbers}."
# else
#   puts "==> The number #{last_number} doesn't appear in #{five_numbers}."
# end

#-- arithmetic integer:

# puts "==> Enter the first number:"
# first_number = gets.chomp.to_f

# puts "==> Enter the second number:"
# second_number = gets.chomp.to_f

# addition = first_number + second_number
# subtraction = first_number - second_number
# product = first_number * second_number
# quotient = first_number / second_number
# remainder = first_number % second_number
# power = first_number ** second_number

# puts "==> #{first_number} + #{second_number} = #{addition}"
# puts "==> #{first_number} - #{second_number} = #{subtraction}"
# puts "==> #{first_number} * #{second_number} = #{product}"
# puts "==> #{first_number} / #{second_number} = #{quotient}"
# puts "==> #{first_number} % #{second_number} = #{remainder}"
# puts "==> #{first_number} ** #{second_number} = #{power}"

#-- or

# OPERATORS = %w(+ - * / % **)

# puts "==> Enter the first number:"
# first_number = gets.chomp.to_f

# second_number = 0
# loop do
#   puts "==> Enter the second number:"
#   second_number = gets.chomp.to_f
#   break unless second_number == 0
#   puts "Sorry, the last number can't be 0."
# end

# OPERATORS.each do |operator|
#   operation = "#{first_number} #{operator} #{second_number}"
#   result = eval(operation)
#   puts "==> #{operation} = #{result}"
# end

#-- counting the number of characters:

# print "Please write word or multiple words: "
# string = gets.chomp

# num_of_chars = string.split.join.length

# puts "There are #{num_of_chars} characters in \"#{string}\"."

# -- multiplying two numbers

# def multiply(first, second)
#   first * second
# end

# p multiply(5,3) == 15
# p multiply([1,2,3], 2)

# -- squaring an argument

# def square(number)
#   multiply(number, number)
# end

# p square(5) == 25
# p square(-8) == 64

# def power(number, power)
#   accumulated = number
#   while power > 1
#     accumulated = multiply(number, accumulated)
#     power -= 1
#   end
#   accumulated
# end

# p power(2, 3)

# -- exclusive or

# def xor?(first, second)
#   (first && !second || second && !first)
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

# -- odd lists

# def oddities(array)
#   new_array = []
#   array.each_with_index do |element, index|
#     new_array << element if index.even?
#   end
#   new_array
# end

# def oddities(array)
#   new_array = []
#   array.each_index do |index|
#     new_array << array[index] if index.even?
#   end
#   new_array
# end

# def oddities(array)
#   array.select do |element|
#     element if array.index(element).even?
#   end
# end

# def oddities(array)
#   array.select.with_index do |element, index|
#     index.even?
#   end
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

# -- palindromic strings part 1

# def palindrome?(string)
#   string == string.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

def palindrome?(collection)
  collection == collection.reverse
end

# p palindrome?([1,2,2,1]) == true
# p palindrome?('356653') == true

# -- palindromic strings part 2

# def real_palindrome?(string)
#   p new_string = string.downcase.delete("^a-z0-9")
#   palindrome?(new_string)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# -- palindromic numbers

def palindromic_number?(number)
  string_number = number.to_s
  palindrome?(string_number)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

p 0252.to_s(10)
p '252'.to_i(8)
p 170.to_s(8)