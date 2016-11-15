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

def permutations(array)
  n = array.size
  return [array] if n == 1
  
  (0...n-1).each do |i|
    permutations(array[0...-1])
    if n.even?
      array[i], array[n-1] = array[n-1], array[i]
    else
      array[0], array[n-1] = array[n-1], array[0]
    end
  end
  permutations(array[0...-1])
end


p permutations([2])
# -> [[2]]

p permutations([1, 2])
# -> [[1, 2], [2, 1]]

p permutations([1, 2, 3])
# -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

p permutations([1, 2, 3, 4])