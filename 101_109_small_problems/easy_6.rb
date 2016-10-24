# cute angles

# def dms(angle)
#   degree, remainder = angle.divmod(1)
#   minute, remainder = (remainder.round(4)*60).divmod(1)
#   second, _ = (remainder.round(4)*60).divmod(1)
#   #degree.to_s + "°" + format("%02d", minute) + "'" + format("%02d", second) + "\""
#   format(%(#{degree}°%02d'%02d"), minute, second)
# end

# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   if degrees_float < 0
#     format(%(#{360 + degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
#   else
#     format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
#   end
# end

# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
# p dms(-76.73)

# easy vowels

# def remove_vowels(array)
#   array.map do |string|
#     string.delete(%(aeiouAEIOU))
#   end
# end

# def remove_vowels(strings)
#   strings.map do |string| 
#     string.chars.select { |char| !%w(a e i o u A E I O U).include?(char) }.join
#   end
# end

# p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# 

# def find_fibonacci_index_by_length(digits)
#   first = 1
#   second = 1
#   index = 3
#   loop do 
#     number = first + second
#     first = second
#     second = number
#     break if second.to_s.length >= digits
#     index += 1
#   end
#   index
# end

# p find_fibonacci_index_by_length(2) == 7
# p find_fibonacci_index_by_length(10) == 45
# p find_fibonacci_index_by_length(100) == 476
# p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847

# reverse array

# def reverse!(array)
#   (array.size / 2).times do |index|
#     array[index], array[-index - 1] = array[-index - 1], array[index]
#   end
#   array
# end

# list = [1,2,3,4]
# p result = reverse!(list) # => [4,3,2,1]
# p list == [4, 3, 2, 1]
# p list.object_id == result.object_id

# list = %w(a b c d e)
# p reverse!(list) # => ["e", "d", "c", "b", "a"]
# p list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# p reverse!(list) # => ["abc"]
# p list == ["abc"]

# list = []
# p reverse!([]) # => []
# p list == []

# reverse arrays part 2

# def reverse(array)
#   new_array = []
#   array.each do |element|
#     new_array.unshift(element)
#   end
#   new_array
# end

# def reverse(array)
#   array.each_with_object([]) { |element, new_array| new_array.unshift(element) }
# end

# def reverse(array)
#   array.reduce([]) { |new_array, element| new_array.unshift(element)}
# end

# p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
# p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# p reverse(['abc']) == ['abc']              # => true
# p reverse([]) == []                        # => true

# p list = [1, 2, 3]                      # => [1, 2, 3]
# p new_list = reverse(list)              # => [3, 2, 1]
# p list.object_id != new_list.object_id  # => true
# p list == [1, 2, 3]                     # => true
# p new_list == [3, 2, 1]                 # => true

# combining arrays

# def merge(array_1, array_2)
#   merged_array = array_1 + array_2
#   merged_array.uniq
# end

# def merge(array_1, array_2)
#   array_1 | array_2
# end

# p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# halvsies

# def halvsies(array)
#   first_half_size = (array.size.to_f/2).ceil
#   array1 = array[0...first_half_size]
#   array2 = array[first_half_size..-1]
#   [array1, array2]
# end

# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

#find the duplicate

# def find_dup(array)
#   unique_values = array.uniq
#   potential_dup = array.select.with_index do |value, index|
#     index != unique_values.index(value)
#   end
#   potential_dup[0]
# end

# def find_dup(array)
#   array.select { |value| array.count(value) ==2 }.first
# end

# def find_dup(array)
#   array.find { |value| array.count(value) == 2}
# end


# def find_dup(array)
#   looked_up_values = []
#   array.each do |value|
#     return value if looked_up_values.include?(value)
#     looked_up_values << value
#   end
# end

# p find_dup([1, 5, 3, 1]) #== 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) #== 73

# does my list include this?

# def include?(array, value)
#   array.each do |element|
#     return true if element == value
#   end
#   false
# end

# def include?(array, value)
#   !!array.find_index(value)
# end

# def include?(array, value)
#   array.count(value)==0 ? false : true
# end

# p include?([1,2,3,4,5], 3) #== true
# p include?([1,2,3,4,5], 6) #== false
# p include?([], 3) #== false
# p include?([nil], nil) #== true
# p include?([], nil) #== false

# right triangles

# def triangle(number)
#   (1..number).each do |index|
#     puts '*' * index + ' ' * (number - index)
#   end
# end

# triangle(5)
# triangle(9)