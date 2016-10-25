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

def prompt(message)
  puts ">> #{message}"
end

prompt "Enter a noun:"
noun = gets.chomp
prompt "Enter a verb:"
verb = gets.chomp
prompt "Enter an adjective:"
adjective = gets.chomp
prompt "Enter an adverb:"
adverb = gets.chomp

sentence_1 = "My #{adjective} #{noun} and I #{verb} it #{adverb}."
sentence_2 = "Do you #{verb} #{noun} #{adverb}? Me and my #{adjective} wife do."

prompt [sentence_1, sentence_2].sample