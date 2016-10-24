# combine two lists

# def interleave(array_1, array_2)
#   array_1.zip(array_2).flatten
# end

# def interleave(array_1, array_2)
#   result = array_1.map.with_index do |element, index| 
#     [element, array_2[index]]
#   end
#   result.flatten
# end

# def interleave(array_1, array_2)
#   result =[]
#   array_1.each_with_index do |element, index|
#     result << element << array_2[index]
#   end
#   result
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# lettercase counter

# def letter_case_count(string)
#   counter = {
#     lowercase: 0,
#     uppercase: 0,
#     neither: 0
#   }
#   string.chars.each do |char|
#     if char == char.upcase && char == char.downcase
#       counter[:neither] += 1
#     elsif char == char.upcase
#     counter[:uppercase] += 1
#   else
#     counter[:lowercase] += 1
#     end
#   end
#   counter
# end

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# capitalize words

# def word_cap(string)
#   array = string.split.map do |word|
#     word[0].upcase + word[1..-1].downcase
#   end
#   array.join(' ')
# end

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# swapcase

# def swapcase(string)
#   chars_array = string.chars.map do |char| 
#     char == char.upcase ? char.downcase : char.upcase
#   end
#   chars_array.join
# end

# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# staggered caps

# def staggered_case(string)
#   chars_array = string.downcase.chars.map.with_index do |char, index| 
#     char.upcase! if index.even?
#     char
#   end
#   chars_array.join
# end

# def staggered_case(string, first_upcased: true)
#   result = ''
#   need_upper = first_upcased
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   p result
# end

# p staggered_case('I Love Launch School!', first_upcased: false) == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# part 2

# def staggered_case(string, first_upcased: true, count_non_alpha: false)
#   result = ''
#   need_upper = first_upcased
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     if count_non_alpha
#       need_upper = !need_upper
#     else
#       need_upper = !need_upper if char =~ /[a-z]/i
#     end
#   end
#   p result
# end

# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# multiplicave average

# def show_multiplicative_average(array)
#   puts 'The result is ' + sprintf('%.3f', (array.reduce(:*)/array.count.to_f))
# end

# p show_multiplicative_average([3, 5])
# #The result is 7.500

# p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# #The result is 28361.667

# multiply lists

# def multiply_list(array_1, array_2)
#   p array_1.zip(array_2).map { |inner_array| inner_array.reduce(:*)}
# end

# def multiply_list(array_1, array_2)
#   result = []
#   array_1.zip(array_2) { |inner_array| result << inner_array.reduce(:*)}
#   result
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# multiply all pairs

# def multiply_all_pairs(array_1, array_2)
#   p array_1.product(array_2).map { |array| array.reduce(:*) }.sort
# end

# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |v1, v2| v1 * v2 }.sort
# end

# p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# the end is near but not here

def penultimate(string)
  string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'