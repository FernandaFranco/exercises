# -- rotation

# def rotate_array(array)
#   p array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]

# def rotate_string(string)
#   p string[1..-1] + string[0]
# end

# rotate_string('amor')

# def rotate_integer(integer)
#   p (integer.to_s[1..-1] + integer.to_s[0]).to_i
# end

# rotate_integer(121)

# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# def rotate_string(string)
#   rotate_array(string.split).join(' ')
# end

# str = 'huh you like ruby'
# p rotate_string('huh you like ruby')
# p str

# def rotate_integer(integer)
#   rotate_array(integer.to_s.chars).join.to_i
# end

# p rotate_integer(1234)

###
# def rotate_rightmost_digits(integer, last)
#   original_part = integer.to_s.chars[0...-last]
#   rotated_part = rotate_array(integer.to_s.chars[-last..-1])
#   (original_part + rotated_part).join.to_i
# end

# def rotate_rightmost_digits(integer, last)
#   all_digits = integer.to_s.chars
#   all_digits[-last..-1] = rotate_array(all_digits[-last..-1])
#   all_digits.join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# def max_rotation(integer)
#   counter = integer.to_s.length
#   while counter > 1
#     integer = rotate_rightmost_digits(integer, counter)
#     counter -= 1
#   end
#   integer
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

###

# NUMBER_OF_SWITCHES = 1000
# switches = [false] * NUMBER_OF_SWITCHES
  
# 1.upto(NUMBER_OF_SWITCHES) do |n| # round n 
#   switches.each_index do |index| # value of individual switch at round n
#     switches[index] = !switches[index] if (index + 1) % n == 0
#   end
# end

# lights_on = switches.map.with_index { |val, ind| val == true ? (ind + 1) : val }
# p result = lights_on.reject { |switch| switch == false }
# p result.size

# NUMBER_OF_SWITCHES = 1000
# switches = (1..NUMBER_OF_SWITCHES).each_with_object({}) { |position, hash| hash[position] = false}
  
# 1.upto(NUMBER_OF_SWITCHES) do |n| # round n 
#   switches.each_key do |key| # value of individual switch at round n
#     switches[key] = !switches[key] if key % n == 0
#   end
# end

# p lights_on = switches.keys.select { |key| switches[key] == true }
# p lights_on.size

###

# def diamond(odd_integer)
#   count = -1
#   while count < odd_integer
#     count += 2
#     puts " " * ((odd_integer - count) / 2) + "*" * count + " " * ((odd_integer - count) / 2)
#   end
#   while count > 1
#     count -= 2
#     puts " " * ((odd_integer - count) / 2) + "*" * count + " " * ((odd_integer - count) / 2)
#   end
# end

# def diamond(odd_integer)
#   count = 1
#   puts ("*" * count).center(odd_integer)
#   while count < odd_integer
#     count += 2
#     puts ("*" + " " * (count-2) + "*").center(odd_integer)
#   end
#   while count > 3
#     count -= 2
#     puts ("*" + " " * (count-2) + "*").center(odd_integer)
#   end
#   count = 1
#   puts ("*" * count).center(odd_integer)
# end

# diamond(51)

# def minilang(commands)
#   register = 0
#   stack = []
#   commands.split.each do |command|
#     case 
#     when command == command.to_i.to_s then register = command.to_i
#     when command == 'PUSH'            then stack << register
#     when command == 'PRINT'           then puts register
#     when stack.empty?                 then return "ERROR: Empty stack."
#     when command == 'ADD'             then register += stack.pop
#     when command == 'SUB'             then register -= stack.pop
#     when command == 'MULT'            then register *= stack.pop
#     when command == 'DIV'             then register /= stack.pop
#     when command == 'MOD'             then register %= stack.pop
#     when command == 'POP'             then register = stack.pop
#     else                              return "ERROR: #{command} is invalid."
#     end
#   end
#   nil
# end

# minilang('PRINT')
# minilang('5 PUSH 3 MULT PRINT')
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# minilang('5 PUSH POP PRINT')
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# minilang('-3 PUSH 5 SUB PRINT 4 SUB')
# minilang('6 PUSH')

# p (3 + (4 * 5) - 7)
# numerator = "7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB" 
# minilang(numerator + " PRINT")

# puts '---'

# p (5 % 3)
# denominator = "3 PUSH 5 MOD PUSH" 
# minilang(denominator + " PRINT")

# puts '---'

# p (3 + (4 * 5) - 7) /(5 % 3)
# minilang("#{denominator} #{numerator} DIV PRINT")

# WORDS = %w(zero one two three four five six seven eight nine)

# def word_to_digit(string)
#   number = '('
#   result = []
#   string.split.each do |word|
#     text = word.downcase.delete('^a-z')
#     if WORDS.include?(text)
#       number << word.gsub(text, WORDS.index(text).to_s)
#       number << ') ' if number.length == 4
#       number << '-' if number.length == 9
#       result << number if number.length >= 14
#     else
#       result << word
#     end
#   end
#   result.join(' ')
# end

# p word_to_digit('Please call me at five five five one two three four five six seven. Thanks.') #== 
# 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# p word_to_digit('Call me at five five five one two three four five six seven. By 2 30 pm.')

# def fibonacci(number)
#   return 1 if [1,2].include?(number)
#   fibonacci(number - 1) + fibonacci(number - 2)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765
# # p fibonacci(50)

# def fibonacci_tail(nth, acc1, acc2)
#   if nth == 1
#     acc1
#   elsif nth == 2
#     acc2
#   else
#     fibonacci_tail(nth - 1, acc2, acc2 + acc1)
#   end
# end

# def fibonacci(nth)
#   fibonacci_tail(nth, 1, 1)
# end

# p fibonacci(50)

def fibonacci(number)
  prev = 1
  curr = 1
  (3..number).each do |position|
    prev, curr = curr, (prev + curr)
  end
  curr
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50)

def fibonacci_last(number)
  fibonacci(number).to_s[-1].to_i
end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

def last_digit(nth)
 endings = 1.upto(60).map { |num| fibonacci_last(num) }
 endings[(nth % 60) - 1]
end

p last_digit(15)        # -> 0  (the 15th Fibonacci number is 610)
p last_digit(20)        # -> 5 (the 20th Fibonacci number is 6765)
p last_digit(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p last_digit(100_001)   # -> 1 (this is a 20899 digit number)
p last_digit(1_000_007) # -> 3 (this is a 208989 digit number)
p last_digit(123456789) # -> 4
p last_digit(123_456_789_987_745) # -> 5