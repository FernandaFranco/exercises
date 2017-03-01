# 8 queens
# 8X8 board 
# placed in a way that none of them can capture each other
# no two queens share the same row, column or diagonal

# NUMBER = 64
# board = NUMBER.product(NUMBER)

# combinations = []

# 1.upto(64) do |starter_square|
#   available_squares = (1..64).to_a
#   unavailable_squares = []
#   queens_positions = []
#   square = starter_square
#   loop do
#     queens_positions << square
#     remove_unavaliable(square)
#     square = available_squares.first
#     break if square == nil
#   end
#   combinations << queens_positions
# end
# p combinations

# def remove_unavailable(square, available_squares, unavailable_squares)
#   unavailable_squares += 


#   available_squares.reject! { |sq| unavailable_squares.include?(sq) }
# end

