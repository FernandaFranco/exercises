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

def find_fibonacci_index_by_length(digits)
  first = 1
  second = 1
  index = 3
  loop do 
    number = first + second
    first = second
    second = number
    break if second.to_s.length >= digits
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
