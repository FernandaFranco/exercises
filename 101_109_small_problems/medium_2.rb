# def longest_sentence(file)
#   text = File.read(file)
#   ordered_sentences = text.split(/[!.?]\s*/).sort_by {|sentence| sentence.split.count }.reverse
#   puts ordered_sentences[0], ordered_sentences[0].split.count
# end

# longest_sentence('four_score.txt')
# longest_sentence('frankenstein.txt')

# def longest_paragraph(file)
#   text = File.read(file)
#   ordered_paragraphs = text.split(/\n\n/).sort_by {|paragraph| paragraph.split.count }.reverse
#   puts ordered_paragraphs[0], ordered_paragraphs[0].split.count
# end

# longest_paragraph('four_score.txt')
# longest_paragraph('frankenstein.txt')

# def longest_word(file)
#   text = File.read(file)
#   ordered_words = text.split(/\W+/).sort_by {|word| word.size }.reverse
#   puts ordered_words[0], ordered_words[0].size
# end

# longest_word('four_score.txt')
# longest_word('frankenstein.txt')

# ALPHABET = ('A'..'Z').to_a
          
# def block_word?(string)
#   unavailable_letters = []
#   string.upcase.chars.each do |char|
#     return false if unavailable_letters.flatten.include?(char)
#     if ALPHABET.index(char) < 13
#       block = [char, ALPHABET[ALPHABET.index(char) + 13]]
#     else
#       block = [ALPHABET[ALPHABET.index(char) - 13], char]
#     end
#     p unavailable_letters << block
#   end
#   true
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

# def letter_percentages(string)
#   {
#     lowercase: (string.count('a-z')/string.size.to_f) * 100,
#     uppercase: (string.count('A-Z')/string.size.to_f) * 100,
#     neither: (string.count('^a-zA-Z')/string.size.to_f) * 100
#   }
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# def balanced?(string)
#   open_parenthesis = 0
#   string.chars.each do |char|
#     open_parenthesis += 1 if char == '('
#     open_parenthesis -= 1 if char == ')'
#     return false if open_parenthesis < 0
#   end
#   open_parenthesis == 0 ? true : false
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# def balanced?(string)
#   pairs = %W(() [] {})
#   pairs.each do |pair|
#     open_pair = 0
#     string.chars.each do |char|
#       open_pair += 1 if char == pair[0]
#       open_pair -= 1 if char == pair[1]
#       break if open_pair < 0
#     end
#     return false unless open_pair.zero?
#   end
#   return false unless string.count("\"").even?
#   return false unless string.count("'").even?
#   true
# end


# p balanced?("He said '(Hilary) is a [nasty] woman.'")

# def triangle(side_1, side_2, side_3)
#   sorted_sides = [side_1, side_2, side_3].sort.reverse
#   case
#   when sorted_sides.include?(0), sorted_sides[0] > (sorted_sides[1] + sorted_sides[2])
#     :invalid
#   when side_1 == side_2 && side_2 == side_3
#     :equilateral
#   when side_1 == side_2 || side_1 == side_3 || side_2 == side_3 
#     :isosceles
#   else
#     :scalene
#   end
# end

# p triangle(3, 3, 3) #== :equilateral
# p triangle(3, 3, 1.5) #== :isosceles
# p triangle(3, 4, 5) #== :scalene
# p triangle(0, 3, 3) #== :invalid
# p triangle(3, 1, 1) #== :invalid

# def triangle(angle_1, angle_2, angle_3)
#   sorted_angles = [angle_1, angle_2, angle_3].sort.reverse
#   case
#   when sorted_angles.include?(0), sorted_angles.reduce(:+) != 180
#     :invalid
#   when sorted_angles[0] == 90
#     :right
#   when sorted_angles.all? { |angle| angle < 90 }
#     :acute
#   else
#     :obtuse
#   end
# end

# p triangle(60, 70, 50) #== :acute
# p triangle(30, 90, 60) #== :right
# p triangle(120, 50, 10) #== :obtuse
# p triangle(0, 90, 90) #== :invalid
# p triangle(50, 50, 50) #== :invalid

# def friday_13th?(year)
#   fridays_13th = 0
#   (1..12).each do |month|
#     date = Time.new(year, month, 13)
#     fridays_13th += 1 if date.friday?
#   end
#   fridays_13th
# end

# p friday_13th?(2015) == 3
# p friday_13th?(1986) == 1

# require 'date'

# def lucky_days(year)
#   week_days = {}
#   (1..12).each do |month|
#     date = Time.new(year, month, 7)
#     week_days[Date::ABBR_MONTHNAMES[month]] = Date::DAYNAMES[date.wday]
#   end
#   week_days
# end

# p lucky_days(2016)

# def second_to_last_day(year)
#   week_days = {}
#   (1..12).each do |month|
#     date = Date.new(year, month, -2)
#     week_days[Date::ABBR_MONTHNAMES[month]] = Date::DAYNAMES[date.wday]
#   end
#   week_days
# end

# p second_to_last_day(2016)

# def featured(number)
#   multiplier = (number/7.to_f).floor + 1
#   multiplier = multiplier + 1 if multiplier.even?
#   potential_featured = 0
#   loop do
#     potential_featured = 7 * multiplier
#     break if potential_featured.to_s.chars == potential_featured.to_s.chars.uniq
#     return "There is no possible number that fulfills those requirements" if potential_featured > 9_876_543_210
#     multiplier += 2
#   end
#   potential_featured
# end

# p featured(12) #== 21
# p featured(20) #== 21
# p featured(21) #== 35
# p featured(997) #== 1029
# p featured(1029) #== 1043
# p featured(999_999) #== 1_023_547
# p featured(999_999_987) #== 1_023_456_987

# p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

# def bubble_sort!(array)
# end_of_array = array.length
#   loop do
#     change = false
#     (1...end_of_array).each do |index|
#       if array[index - 1] > array[index]
#         array[index - 1], array[index] = array[index], array[index - 1]
#         change = true
#       end
#     end
#     break if change == false
#     end_of_array -= 1
#   end
#   array
# end

# array = [5, 3]
# p bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# p bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# p bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

def sum_square_difference(number)
  plain_sum = 0
  sum_of_squares = 0
  1.upto(number) do |n|
    plain_sum += n
    sum_of_squares += n**2
  end
  plain_sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150