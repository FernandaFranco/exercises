# text = File.readlines('madlibs_base.txt')

# ADJECTIVES = %w(pretty awesome fat curly nice old jealous handsome quiet).freeze
# NOUNS = %w(dude boy lady man person table car egg shoe).freeze
# ADVERBS = %w(quickly nervously completely dearly honestly timely amazingly).freeze
# VERBS = %w(runs dives hunts drives walks makes likes curses).freeze

# text.each do |line| 
#   line = line.split(' ')
#   line.map! do |word|
#     case 
#     when word.include?('adjective')
#       word.gsub('adjective', ADJECTIVES.sample)
#     when word.include?('noun')
#       word.gsub('noun', NOUNS.sample)
#     when word.include?('adverb')
#       word.gsub('adverb', ADVERBS.sample)
#     when word.include?('verb')
#       word.gsub('verb', VERBS.sample)
#     else
#       word
#     end
#   end
#   puts line.join(' ')
# end

# result = text.split(' ').map do |word|
#   case 
#   when word.include?('adjective')
#     word.gsub('adjective', ADJECTIVES.sample)
#   when word.include?('noun')
#     word.gsub('noun', NOUNS.sample)
#   when word.include?('adverb')
#     word.gsub('adverb', ADVERBS.sample)
#   when word.include?('verb')
#     word.gsub('verb', VERBS.sample)
#   else
#     word
#   end
# end

# p result.join(' ')

# File.open('madlibs_base_2.txt') do |file|
#   file.each do |line|
#     puts format(line, noun: NOUNS.sample, adjective: ADJECTIVES.sample, 
#                 adverb: ADVERBS.sample, verb: VERBS.sample)
#   end
# end
# def print_row(grid_size, row_number)
#   padding = ' ' * (row_number - 1)
#   spaces = ' ' * ((grid_size-3)/2 - padding.size)
#   puts padding + '*' + spaces + '*' + spaces + '*' + padding
# end

# def star(grid_size)
#   1.upto(grid_size/2) do |row_number|
#     print_row(grid_size, row_number)
#   end
#   puts '*' * grid_size
#   (grid_size/2).downto(1) do  |row_number|
#     print_row(grid_size, row_number)
#   end
# end

# star(7)
# star(9)
# star(21)


# def circle(grid_size)
#   stars_wall = grid_size % 10
#   padding_size = (grid_size - stars_wall)/2
#   puts (' ' * padding_size) + ('*' * stars_wall) + (' ' * padding_size)
#   corner_1 = ''
#   until stars_wall == 1
#     corner_2 = ('*' * (stars_wall))
#     corner_all_size = corner_1.size + corner_2.size
#     puts (' ' * (padding_size - corner_all_size)) + corner_2 + (' ' * (stars_wall + corner_1.size*2)) + corner_2 + (' ' * (padding_size - corner_all_size))
#     corner_1 = corner_2
#     stars_wall = stars_wall / 2
#   end
# end

# circle(14) #row 1 has 4 stars
# circle(38)

# def walls(side)
#   nums = []
#   num = side/2
#   until num < 1
#     nums << num
#     num /= 2
#   end
#   nums
# end

# def padding(side)
#   ((Math.log(side, 2) + 1) + walls(side).reduce(:+))
# end



# def circle(side)
#   puts ' ' * padding(side) + ('*' * side)
#   row_above_size = 0
#   walls(side).each do |row|
#     puts ' ' * (padding(side) - row - row_above_size) + '*' * row + ' ' * (side + row_above_size*2) + '*' * row
#     row_above_size += row
#   end
  
#   puts ' ' * (padding(side) - 1 - row_above_size) + '*' + ' ' * (side + row_above_size*2) + '*'
#   row_above_size += 1
  
#   walls(side).reverse.each do |column|
#     column.times do
#       puts ' ' * (padding(side) - 1 - row_above_size) + '*' + ' ' * (side + row_above_size*2) + '*'
#     end
#           row_above_size += 1
#   end

# end

# circle(4)
# circle(8)
# circle(16)

# def transpose(array)
#   transposed_array = []
#   (0...array.size).each do |index|
#     new_row = []
#     array.each do |row|
#       new_row << row[index]
#     end
#     transposed_array << new_row
#   end
#   transposed_array
# end


# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# def transpose!(array)
#   array.each_with_index do | row, row_i |
#     row.each_with_index do | _, col_i |
#       if row_i < col_i
#         array[row_i][col_i], array[col_i][row_i] = array[col_i][row_i], array[row_i][col_i]
#       end
#     end
#   end
#   nil
# end


# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p transpose!(matrix) == nil
# p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

# def transpose(array)
#   new_array = []
#   (0...array[0].size).each do |col_i|
#     new_row = []
#     (0...array.size).each do |row_i|
#       new_row << array[row_i][col_i]
#     end
#     new_array << new_row
#   end
#   new_array
# end

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

# def rotate90(array)
#   new_array = []
#   (0...array[0].size).each do |col_i|
#     new_row = []
#     (0...array.size).reverse_each do |row_i|
#       new_row << array[row_i][col_i]
#     end
#     new_array << new_row
#   end
#   new_array
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2


# def rotate(array, angle)
#   (angle/90).times do 
#     new_array = []
#     (0...array[0].size).each do |col_i|
#       new_row = []
#       (0...array.size).reverse_each do |row_i|
#         new_row << array[row_i][col_i]
#       end
#       new_array << new_row
#     end
#     array = new_array
#   end
#   array
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# p rotate(matrix1, 360)

# def permutations(array)
#   new_array = []
#   array.each_index do |i|
#     array.each_index do |j|
#       array_copy = array.clone
#       array_copy[i], array_copy[j] = array_copy[j], array_copy[i] 
#       new_array << array_copy
#     end
#   end
#   new_array.uniq
# end

# def permutations(array)
#   return [array] if array.size == 1
  
#   result = []
#   array.each_index do |index|
#     sub_permutations = permutations(array[0...index] + array[(index+1)..-1])
#     sub_permutations.each do |permutation|
#       result << [array[index]] + permutation
#     end
#   end
#   result
# end

### heap's algorithm

# def permutations(array, n = array.size, result_array = [])
#   if n == 1
#     result_array << array.clone
#   else
#     (0...n-1).each do |i|
#       permutations(array, n-1, result_array)
      
#       if n.even?
#         array[i], array[n-1] = array[n-1], array[i]
#       else
#         array[0], array[n-1] = array[n-1], array[0]
#       end
#     end
    
#     permutations(array, n-1, result_array)
#   end
  
#   result_array
# end


# p permutations([2])
# # -> [[2]]

# p permutations([1, 2])
# # -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# # -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.size != 1
#     array.map do |value|
#       value * value
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

def merge(array_1, array_2)
  result = []
  
  index_1 = 0
  index_2 = 0
  
  until array_1[index_1] == nil && array_2[index_2] == nil
    case
    when array_1[index_1] == nil
      result << array_2[index_2]
      index_2 += 1
    when array_2[index_2] == nil
      result << array_1[index_1]
      index_1 += 1
    when array_1[index_1] < array_2[index_2]
      result << array_1[index_1]
      index_1 += 1
    when array_2[index_2] < array_1[index_1]
      result << array_2[index_2]
      index_2 += 1
    end
  end
 
  result
end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

# def merge_sort(array)
#   nested_array = array.map do |value|
#     [value]
#   end

#   result = []
#   until result.size == 1
#     result = []
    
#     index = 0
#     until nested_array[index + 1] == nil
#       result << merge(nested_array[index], nested_array[index + 1])
#       index += 2
#     end
    
#     result << nested_array[index] if nested_array[index] != nil
#     nested_array = result
#   end
  
  
#   result.flatten
# end

# def merge_sort(array)
#   return array if array.size == 1
  
#   subarray_1 = array[0...(array.size / 2)]
#   subarray_2 = array[(array.size / 2)..-1]
  
#   subarray_1 = merge_sort(subarray_1)
#   subarray_2 = merge_sort(subarray_2)
  
#   merge(subarray_1, subarray_2)
# end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


# takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number

def egyptian(rational)
  number = rational
  denominator = 1
  array= []
  
  loop do
    if (number - (1 / denominator.to_f)).round(10) < 0
      denominator += 1
      next
    end
    number -= (1 / denominator.to_f)
    array << denominator
    
    denominator += 1
    
    break if number.round(10) == 0
  end
  
  array
end

# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# takes an Array of numbers in the same format, and calculates the resulting Rational number. You will need to use the Rational class provided by Ruby.

def unegyptian(egyptian)
  rat = 0 
  p egyptian
  egyptian.each do |den|
    p rat += Rational(1,den)
  end
  rat
end

p unegyptian(egyptian(Rational(1, 2))) #== Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) #== Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) #== Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) #== Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) #== Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) #== Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) #== Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) #== Rational(3, 1)