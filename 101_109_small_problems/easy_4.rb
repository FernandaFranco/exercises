# -- short long short

# def short_long_short(first, second)
#   if first.size > second.size
#     second + first + second
#   else
#     first + second + first
#   end
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# -- what century is that?

# def century(year)
#   if year.to_s[-2..-1] == '00'
#     century = year.to_s[0..-3]
#   else
#     century = (year.to_s[0..-3].to_i + 1).to_s
#   end

#   suffix = case 
#   when ['11', '12', '13'].include?(century[-2..-1])
#     'th'
#   when century[-1] == '1'
#     'st'
#   when century[-1] == '2'
#     'nd'
#   when century[-1] == '3'
#     'rd'
#   else
#     'th'
#   end

#   century + suffix 
# end

# def century(year)
#   if year % 100 == 0
#     century = (year / 100)
#   else 
#     century = (year / 100) + 1
#   end

#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)

#   case century % 10 # last digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else        'th'
#   end
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# -- leap years part 1

# def leap_year?(year)
#   if year % 4 == 0
#     if year % 100 == 0
#       year % 400 == 0
#     else
#       true
#     end
#   else
#     false
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

# -- leap year part 2

# def leap_year?(year)
#   if year >= 1752
#     (year % 4 == 0 && !(year % 100 == 0)) || (year % 400 == 0)
#   else
#     year % 4 == 0
#   end
# end

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

# -- multiples of 3 and 5

# def multisum(integer)
#   array_of_multiples = (1..integer).select do |number|
#     number % 3 == 0 || number % 5 == 0
#   end
#   array_of_multiples.reduce(:+)
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

#-- running totals

# def running_total(array)
#   sum = 0
#   array.map do |number|
#     sum += number
#   end
# end

# def running_total(array)
#   array.map.with_index do |_, index|
#     array[0..index].inject(:+)
#   end
# end

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) do |number, new_array|
#     new_array << sum += number
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# -- convert a string to a number!
# CHARS = %w(0 1 2 3 4 5 6 7 8 9)
# DIGITS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# def string_to_integer(string)
#   array = string.chars.map do |ch|
#     DIGITS[CHARS.index(ch)]
#   end
#   new_array = array.reverse.map.with_index do |digit, index|
#     digit * (10 ** index)
#   end
#   new_array.inject(:+)
# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# HEX_TO_DEC = {
#   '0'=> 0, '1'=> 1, '2'=> 2 , '3'=> 3 , '4'=> 4 , '5'=> 5 , '6'=> 6 , '7'=> 7 ,
#   '8'=> 8, '9'=> 9, 'a'=> 10, 'b'=> 11, 'c'=> 12, 'd'=> 13, 'e'=> 14, 'f'=> 15
# }

# def hexadecimal_to_integer(hexadecimal)
#   digits = hexadecimal.chars.map { |char| HEX_TO_DEC[char.downcase] }

#   value = 0
#   digits.each { |digit| value = (16 * value) + digit }
#   value
# end

# p hexadecimal_to_integer('4D9f') == 19871
# p 0x4d9f == 19871

# -- convert a string to a signed number

# def string_to_signed_integer(string)
#   integer = string_to_integer(string.delete('+-'))
#   string[0] == '-' ? -integer : integer
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

# convert a number to a string!

CHARS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(number)
  string = ''
  loop do
    number, remainder = number.divmod(10)
    string.prepend(CHARS[remainder])
    break if number.zero?
  end
  string
end

# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

def signed_integer_to_string(integer)
  string = integer_to_string(integer.abs)
  return string if integer.zero?
  integer > 0 ? '+' + string : '-' + string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
