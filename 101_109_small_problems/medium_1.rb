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

def diamond(odd_integer)
  count = 1
  puts ("*" * count).center(odd_integer)
  while count < odd_integer
    count += 2
    puts ("*" + " " * (count-2) + "*").center(odd_integer)
  end
  while count > 3
    count -= 2
    puts ("*" + " " * (count-2) + "*").center(odd_integer)
  end
  count = 1
  puts ("*" * count).center(odd_integer)
end

diamond(51)
