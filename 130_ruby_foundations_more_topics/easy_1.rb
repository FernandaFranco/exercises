# class Tree
#   include Enumerable

#   def each

#   end
# end

# Tree.new.select(&:odd?)

# def compute
#   return "Does not compute." unless block_given?
#   yield
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# def compute(arg)
#   return "Does not compute." unless block_given?
#   yield(arg)
# end

# p compute(5) { |v| v + 3 } == 8
# p compute('b') { |l| 'a' + l } == 'ab'
# p compute(100) == 'Does not compute.'

# takes sorted array
# finds missing integers between each pair of values
# returns missing values array

# def missing(array)
#   result = []

#   array.each_index do |idx|
#     break if array[idx + 1] == nil
#     missing_integers = (array[idx + 1] - array[idx]) - 1
#     unless missing_integers == 0
#       1.upto(missing_integers) { |value| result << array[idx] + value}
#     end
#   end

#   result
# end

# def missing(array)
#   result = []

#   array.each_cons(2) do |current, nxt|
#     missed = (nxt - current) - 1
#     unless missed == 0
#       1.upto(missed) { |value| result << (current + value)}
#     end
#   end

#   result
# end

# def missing(array)
#   result = []

#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)...second).to_a)
#   end

#   result
# end

# p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) #== []
# p missing([1, 5]) #== [2, 3, 4]
# p missing([6]) #== []

# def divisors(integer)
  # (1..integer).select do |candidate|
  #   integer % candidate == 0
  # end
# end


# def divisors(integer)
#   result = []

#   (1..integer).each do |candidate|
#     div, remainder = integer.divmod(candidate)
#     if remainder == 0
#       break if result.include?(candidate)
#       result << candidate
#       result << div unless integer == candidate**2
#     end
#   end

#   result.sort
# end


# # def divisors(num)
# #   divisors = []
# #   (1..Math.sqrt(num)).each do |factor|
# #     if num % factor == 0
# #       divisors << factor
# #       divisors << num / factor unless (num == factor**2)
# #     end
# #   end
# #   divisors.sort
# # end

# p divisors(9)
# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
# t = Time.now
# p divisors(999962000357)
# p Time.now - t

# PIONEERS = <<-PIONEERS
# Nqn Ybirynpr
# Tenpr Ubccre
# Nqryr Tbyqfgvar
# Nyna Ghevat
# Puneyrf Onoontr
# Noqhyynu Zhunzznq voa Zhfn ny-Xujnevmzv
# Wbua Ngnanfbss
# Ybvf Unyog
# Pynhqr Funaaba
# Fgrir Wbof
# Ovyy Tngrf
# Gvz Orearef-Yrr
# Fgrir Jbmavnx
# Xbaenq Mhfr
# Wbua Ngnanfbss
# Fve Nagbal Ubner
# Zneiva Zvafxl
# Lhxvuveb Zngfhzbgb
# Unllvz Fybavzfxv
# Tregehqr Oynapu
# PIONEERS

# DOUBLE_ABC = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z).freeze * 2 # repeats twice

# def rot13(char)
#   char_index = DOUBLE_ABC.index(char.upcase) # nil if the char isn't included in DOUBLE_ABC
#   return char unless char_index 

#   correct_char = DOUBLE_ABC[char_index + 13]
  
#   (char == char.downcase) ? correct_char.downcase : correct_char
# end

# def decipher(name)
#   name.chars.map { |char| rot13(char) }.join
# end

# PIONEERS.split("\n").each do |name|
#   puts decipher(name)
# end

# a method that iterates through the array its given as argument
# for each element in array it yields to block
# when block returns true it stops and return true
# returns false if block never return true

def any?(array)
  array.each do |element|
    return true if yield(element)
  end

  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false