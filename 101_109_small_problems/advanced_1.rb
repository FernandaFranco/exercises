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

def circle(grid_size)
  stars_wall = grid_size % 10
  padding_size = (grid_size - stars_wall)/2
  puts (' ' * padding_size) + ('*' * stars_wall) + (' ' * padding_size)
  puts ('*' * (stars_wall - 2)) + (' ' * star_wall)
end

circle(14) #row 1 has 4 stars
circle(26) #row 1 has 6 stars
circle(38)




