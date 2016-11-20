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
 
CHARS = %w(0 1 2 3 4 5 6 7 8 9)
 
 def string_to_integer(string)
   string.each_char do |char|
     CHARS.index(char)
   end
 end
  
p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570

