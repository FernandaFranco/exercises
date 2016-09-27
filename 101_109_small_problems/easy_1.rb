# def repeat(string, integer)
#   integer.times { puts string }
# end

# repeat('Hello', 3)


# def is_odd?(number)
#   #number.round == number && number % 2 != 0
#   number % 2 == 1
# end


# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(7.1)  # => false
# puts is_odd?(-5.0) # => true

# def digit_list(integer)
#   integer.to_s.split("").map do |digit|
#     digit.to_i
#   end
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# def count_occurrences(array)
#   hash = {}
#   array.each do |element|
#     hash[element] ||= 0
#     hash[element] += 1
#   end
#   hash.each do |key, value|
#     puts "#{key} => #{value}"
#   end
# end


# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# def reverse_sentence(string)
#   new_sentence = []
#   string.split(" ").each do |word|
#     new_sentence.unshift(word)
#   end
#   new_sentence.join(" ")
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_words(sentence)
#   new_sentence = sentence.split.map do |word|
#     word.reverse! if word.size >= 5
    
#     word
#   end
#   new_sentence.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# # def stringy(integer)
# #   string = ''
# #   (1..integer).to_a.each_index do |index| 
# #     if index.even?
# #       string << '1'
# #     else
# #       string << '0'
# #     end
# #   end
# #   string
# # end

# # or

# def stringy(integer)
#   string = ''
#   integer.times do |index|
#     number = index.even? ? '1' : '0'
#     string << number
#   end
#   string
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# def stringy_with_default(integer, first_digit = 0)
#   string = ''
#   integer.times do |index|
#     number = index.even? ? first_digit : (first_digit - 1).abs
#     string << number.to_s
#   end
#   p string
# end

# puts stringy_with_default(6) == '101010'
# puts stringy_with_default(9) == '101010101'
# puts stringy_with_default(4) == '1010'
# puts stringy_with_default(7) == '1010101'

# def average(integers_array)
#   sum = integers_array.reduce do |prev, curr| 
#     prev + curr
#   end
#   p sum.to_f / integers_array.size
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# def sum(integer)
#   sum = 0
#   integer.to_s.split('').each do |char|
#     sum += char.to_i
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def sum(integer)
#   sum = 0
#   while integer > 0
#     quo, rem = integer.divmod(10)
#     sum += rem
#     integer = quo
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def sum(integer)
#   integer.to_s.chars.map(&:to_i).reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def sum(integer)
#   sum = 0
#   integer.to_s.chars.size.times do
#     quo, rem = integer.divmod(10)
#     sum += rem
#     integer = quo
#   end
#   sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

def calculate_bonus(salary, bonus)
  bonus ? salary/2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

