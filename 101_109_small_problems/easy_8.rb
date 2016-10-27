###

# def sum_of_sums(array)
#   numbers_to_sum = []
#   result = 0
#   array.each do |number|
#     numbers_to_sum << number
#     result += numbers_to_sum.reduce(:+)
#   end
#   result
# end

# def sum_of_sums(array)
#   result = 0
#   array.each_index do |index|
#     numbers_to_sum = array[0..index]
#     result += numbers_to_sum.reduce(:+)
#   end
#   result
# end

# p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# p sum_of_sums([4]) #== 4
# p sum_of_sums([1, 2, 3, 4, 5]) #== 35

###

# def prompt(message)
#   puts ">> #{message}"
# end

# prompt "Enter a noun:"
# noun = gets.chomp
# prompt "Enter a verb:"
# verb = gets.chomp
# prompt "Enter an adjective:"
# adjective = gets.chomp
# prompt "Enter an adverb:"
# adverb = gets.chomp

# sentence_1 = "My #{adjective} #{noun} and I #{verb} it #{adverb}."
# sentence_2 = "Do you #{verb} #{noun} #{adverb}? Me and my #{adjective} wife do."

# prompt [sentence_1, sentence_2].sample

###

# def substrings_at_start(string)
#   substring = ''
#   result = []
#   string.each_char do |char|
#     substring += char
#     result << substring
#   end
#   result
# end

# p substrings_at_start('abc') == ['a', 'ab', 'abc']
# p substrings_at_start('a') == ['a']
# p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# def substrings(string)
#   result = []
#   string.chars.each_index do |index|
#     result << substrings_at_start(string[index..-1])
#   end
#   result.flatten
# end

# p substrings('abcde') == [
#   'a', 'ab', 'abc', 'abcd', 'abcde', 
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]

# def palindromes(string)
#   substrings(string).select do |substring|
#     substring == substring.reverse && substring.size > 1
#   end
# end
  

# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# def palindromes(string)
#   all_substrings = substrings(string.downcase.delete('^a-z'))
#   all_substrings.select do |substring|
#     substring == substring.reverse && substring.size > 1
#   end
# end

# p palindromes('hello-Madam-did-madam-goodbye')

###

def fizzbuzz(starting_number, ending_number)
  result = []
  (starting_number..ending_number).each do |number|
    if number % 3 == 0 && number % 5 == 0
      result << 'fizzbuzz'
    elsif number % 3 == 0
      result << 'fizz'
    elsif number % 5 == 0
      result << 'buzz'
    else
      result << number
    end
  end
  puts result.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
