# def greetings(names, job_description)
#   name = names.join(' ')
#   job = job_description.values.join(' ')
#   puts "Welcome #{name} to the #{job}'s convention!"
# end

# greetings(%w(Fernanda Franco Dias), \
#           title: 'Junior', occupation: 'Web Developer')

###

# def twice(number)
#   digits = number.to_s.length
#   number.to_s[0...digits/2] == number.to_s[digits/2..-1] ? number : number*2
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# def negative(number)
#   number > 0 ? - number : number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0

# def sequence(integer)
#   integer > 0 ? (1..integer).to_a : (integer..1).to_a.reverse
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]
# p sequence(-6)

# def uppercase?(string)
#   string == string.upcase
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# def word_lengths(string)
#   string.split.map do |word|
#     word + ' ' + word.length.to_s
#   end
# end
  
# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []


# def swap_name(name)
#   name.split.reverse.join(', ')
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

# def sequence(count, number)
#   result = []
#   1.upto(count) do |counter|
#     result << number * counter
#   end
#   result
# end

# p sequence(5, 1) #== [1, 2, 3, 4, 5]
# p sequence(4, -7) #== [-7, -14, -21, -28]
# p sequence(3, 0) #== [0, 0, 0]
# p sequence(0, 1000000) #== []

# def get_grade(score_1, score_2, score_3)
#   grade = [score_1, score_2, score_3].reduce(:+)/3
#   case grade
#   when (80...90) then 'B'
#   when (70...80) then 'C'
#   when (60...70) then 'D'
#   when (0...60)  then 'F'
#   else                'A'
#   end
# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

def buy_fruit(array_of_arrays)
  array_of_arrays.map { |array| [array[0]]*array[1] }.flatten
end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


