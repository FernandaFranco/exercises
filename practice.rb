# def fizzbuzz(first, last)
#   result = (first..last).map do |number|
#     if number % 3 == 0 && number % 5 == 0
#       'FizzBuzz'
#     elsif number % 3 == 0
#       'Fizz'
#     elsif number % 5 == 0
#       'Buzz'
#     else
#       number
#     end
#   end
  
#   puts result.join(', ')
# end

# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# def repeater(string)
#   result = []
#   string.chars.each do |char|
#     result << char*2
#   end
  
#   result.join
# end

# def repeater(string)
#   result = ''
  
#   string.each_char do |char|
#     result << char * 2
#   end
  
#   result
# end

# p repeater('Hello') == "HHeelllloo"
# p repeater("Good job!") == "GGoooodd  jjoobb!!"
# p repeater('') == ''

# def double_consonants(string)
#   result = ''
  
#   string.each_char do |char|
#     if %W(b c d f g h j k l m n p q r s t v w x y z).include?(char.downcase)
#       result << char * 2
#     else
#       result << char
#     end
#   end
  
#   result
# end

# p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""

# def reversed_number(number)
#   result = []
  
#   number.to_s.chars.each_with_index do |char, index|
#     result.unshift(char)
#   end
  
#   result.join.to_i
# end
  
# def reversed_number(number)
#   number.to_s.chars.reverse.join.to_i
# end
  
# p reversed_number(12345) #== 54321
# p reversed_number(12213) #== 31221
# p reversed_number(456) #== 654
# p reversed_number(12000) #== 21 # Note that zeros get dropped!
# p reversed_number(1) #== 1

# def center_of(string)
#   middle_index = string.size/2
#   string.size.even? ? string[(middle_index - 1)..middle_index] : string[middle_index]
# end

# p center_of('I love ruby') #== 'e'
# p center_of('Launch School') #== ' '
# p center_of('Launch') #== 'un'
# p center_of('Launchschool') #== 'hs'
# p center_of('x') #== 'x'

# def multisum(number)
#   multiples = (1..number).select do |value|
#     value % 3 == 0 || value % 5 == 0
#   end
  
#   multiples.reduce(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# def running_total(array)
#   result = []
  
#   array.each_index do |index|
#     result << array[0..index].reduce(:+)
#   end
  
#   result
# end

# def running_total(array)
#   sum = 0
  
#   array.map do |number|
#     sum += number 
#   end
# end


# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
 
# CHARS = %w(0 1 2 3 4 5 6 7 8 9)
 
#  def string_to_integer(string)
#    string.each_char do |char|
#      CHARS.index(char)
#    end
#  end
  
# p string_to_integer('4321') #== 4321
# p string_to_integer('570') #== 570

# # "reverse an array without using the built-in reverse method"

# def reverse_array(array)
#  result = []
 
#  array.each do |element|
#   result.unshift(element)
#  end
 
#  result
# end

# p reverse_array([1,2,3,4,5])

# def reverse_string(string)
 
#  reverse_array(string.chars).join
 
# end

# p reverse_string('Hello!')


# # "select the element out of the array if its index is a fibonacci number"

# def fibonacci?(number)
#  first = 1
#  second = 1
#  loop do 
#    break if second >= number
#    first, second = second, first + second
#  end
 
#  number == second
# end

# def select_if_fib_index(array)
#  array.select do |element|
#   fibonacci?(array.index(element))
#  end
# end


# #1,1,2,3,5,8,13,21
# p fibonacci?(1)

# p select_if_fib_index(%w(a b c d e f g h i j q l m n o p q r s t u v w x y z))

# # "write a method to determine if a word is a palindrome, without using the reverse method"

# def palindrome?(word)
#  reverse_word = []
 
#  word.each_char do |char|
#   reverse_word.unshift(char)
#  end
 
#  reverse_word.join == word
# end

# p palindrome?('madam')
# p palindrome?('sir')

# def reverse(string)
#  result = []
 
#  string.chars.each do |char|
#   result.unshift(char)
#  end
 
#  result.join
# end


# p reverse("Launch School") == "Launch School".reverse

# require 'pry'

# def fizzbuzz(first, second)
# result = (first..second).map do |number|
#             case 
#             when number % 3 == 0 && number % 5 == 0
#               "FizzBuzz"
#             when number % 3 == 0
#               "Fizz"
#               when number % 5 == 0
#                 "Buzz"
#             else
#               number
#             end
#             binding.pry
#           end
  
#   result.join(', ')
# end

# p fizzbuzz(1, 15)

def remove_vowels(array)
  result = []
  
  array.each do |string|
   result << string.delete('aeiou') 
  end
  
  result
end

p remove_vowels(%w(hello my name is fernanda))
