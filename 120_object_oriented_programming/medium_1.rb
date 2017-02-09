# class Machine
#   def start
#     flip_switch(:on)
#   end

#   def stop
#     flip_switch(:off)
#   end

#   def state
#     switch == :on ? "The machine is on" : "The machine is off"
#   end

#   private

#   attr_accessor :switch

#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end

# machine = Machine.new
# p machine.state
# machine.start
# p machine.state
# machine.stop
# p machine.state

# class FixedArray
#   def initialize(length)
#     @length = length
#     @array = [nil] * @length
#   end

#   def [](index)
#     @array.fetch(index)
#   end

#   def []=(index, value)
#     @array[index] = value
#   end

#   def to_a
#     @array
#   end

#   def to_s
#     @array.to_s
#   end
# end

# fixed_array = FixedArray.new(5)
# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5

# fixed_array[3] = 'a'
# puts fixed_array[3] == 'a'
# puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

# fixed_array[1] = 'b'
# puts fixed_array[1] == 'b'
# puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

# fixed_array[1] = 'c'
# puts fixed_array[1] == 'c'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

# fixed_array[4] = 'd'
# puts fixed_array[4] == 'd'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
# puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

# puts fixed_array[-1] == 'd'
# puts fixed_array[-4] == 'c'

# begin
#   fixed_array[6]
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[-7] = 3
#   puts false
# rescue IndexError
#   puts true
# end

# class Student
#   def initialize(name, year)
#     @name = name
#     @year = year
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year)
#     @parking = parking
#   end
# end

# class Undergraduate < Student
# end

# class CircularQueue
#   def initialize(buffer_max_size)
#     @buffer_max_size = buffer_max_size
#     @buffer = []
#   end

#   def dequeue
#     @buffer.shift
#   end

#   def enqueue(new_object)
#     dequeue unless @buffer.size < @buffer_max_size
#     @buffer << new_object
#   end
# end

# queue = CircularQueue.new(3)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# class MinilangRuntimeError < RuntimeError; end
# class BadTokenError < MinilangRuntimeError; end
# class EmptyStackError < MinilangRuntimeError; end

# class Minilang
#   def initialize(operations)
#     @operations = operations
#     @register = 0
#     @stack = []
#   end

#   def pop
#     raise EmptyStackError, "Empty stack!" if @stack.empty?
#     @stack.pop
#   end

#   def eval(value = {})
#     @parsed_operations = format(@operations, value).split(' ')
#     @parsed_operations.each do |op|
#       case op
#       when 'PUSH'       then @stack    << @register
#       when 'ADD'        then @register += pop
#       when 'SUB'        then @register -= pop
#       when 'MULT'       then @register *= pop
#       when 'DIV'        then @register /= pop
#       when 'MOD'        then @register %= pop
#       when 'POP'        then @register  = pop
#       when 'PRINT'      then puts @register
#       when op.to_i.to_s then @register = op.to_i
#       else
#         raise BadTokenError, "Invalid token: #{op}"
#       end
#     end
#   rescue MinilangRuntimeError => error
#     puts error.message
#   end
# end

# Minilang.new('PRINT').eval
# # 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

# Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # 8

# Minilang.new('6 PUSH').eval
# # (nothing printed; no PRINT commands)

# Minilang.new('1 PUSH 2 PUSH 3 PRINT SUB PRINT SUB PRINT ADD PRINT').eval

# CENTIGRADE_TO_FAHRENHEIT =
#   '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
# minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
# minilang.eval(degrees_c: 100)
# # 212
# minilang.eval(degrees_c: 0)
# # 32
# minilang.eval(degrees_c: -40)
# # -40

# AREA_OF_RECTANGLE = '%<height>d PUSH %<length>d MULT PRINT'
# minilang = Minilang.new(AREA_OF_RECTANGLE)
# minilang.eval(height: 10, length: 20)

# class PingGame
#   MAX_GUESSES = 7
#   MAX_NUMBER = 100
#   MIN_NUMBER = 1

#   def set_new_game
#     @guesses = MAX_GUESSES
#     @correct_number = rand(MAX_NUMBER) + MIN_NUMBER
#   end

#   def play
#     set_new_game

#     loop do
#       puts "You have #{@guesses} guesses remaining."
#       number = nil
#       loop do
#         print "Enter a number between #{MIN_NUMBER} and #{MAX_NUMBER}: "
#         number = gets.chomp.to_i
#         break if (MIN_NUMBER..MAX_NUMBER).cover?(number)
#         print "Invalid guess. "
#       end

#       @guesses -= 1

#       if number < @correct_number
#         puts "Your guess is too low"
#       elsif number > @correct_number
#         puts "Your guess is too high"
#       else
#         puts "You win!"
#         break
#       end

#       if @guesses == 0
#         puts "You are out of guesses. You lose."
#         break
#       end
#     end
#   end
# end

# game = PingGame.new
# game.play
# game.play

# class Guesser
#   def initialize(min_number, max_number)
#     @min_number = min_number
#     @max_number = max_number
#     @range = (@min_number..@max_number)
#   end
  
#   def size_of_range
#     @range.size
#   end

#   def set_new_game
#     @guesses = Math.log2(size_of_range).to_i + 1
#     @correct_number = rand(@range)
#   end

#   def play
#     set_new_game

#     loop do
#       puts "You have #{@guesses} guesses remaining."
#       number = nil
#       loop do
#         print "Enter a number between #{@min_number} and #{@max_number}: "
#         number = gets.chomp.to_i
#         break if @range.cover?(number)
#         print "Invalid guess. "
#       end

#       @guesses -= 1

#       if number < @correct_number
#         puts "Your guess is too low"
#       elsif number > @correct_number
#         puts "Your guess is too high"
#       else
#         puts "You win!"
#         break
#       end

#       if @guesses == 0
#         puts "You are out of guesses. You lose."
#         break
#       end
#     end
#   end
# end

# game = Guesser.new(501, 1500)
# game.play
# game.play

# class Card
#   include Comparable
#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end

#   protected

#   def value
#     case rank
#     when 'Jack'  then 11
#     when 'Queen' then 12
#     when 'King'  then 13
#     when 'Ace'   then 14
#     else         rank
#     end
#   end

#   def <=>(other_card)
#     value <=> other_card.value
#   end
# end

# cards = [Card.new(2, 'Hearts'),
#          Card.new(10, 'Diamonds'),
#          Card.new('Ace', 'Clubs')]
# puts cards
# puts cards.min == Card.new(2, 'Hearts')
# puts cards.max == Card.new('Ace', 'Clubs')

# cards = [Card.new(5, 'Hearts')]
# puts cards.min == Card.new(5, 'Hearts')
# puts cards.max == Card.new(5, 'Hearts')

# cards = [Card.new(4, 'Hearts'),
#          Card.new(4, 'Diamonds'),
#          Card.new(10, 'Clubs')]
# puts cards.min.rank == 4
# puts cards.max == Card.new(10, 'Clubs')

# cards = [Card.new(7, 'Diamonds'),
#          Card.new('Jack', 'Diamonds'),
#          Card.new('Jack', 'Spades')]
# puts cards.min == Card.new(7, 'Diamonds')
# puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#          Card.new(8, 'Clubs'),
#          Card.new(8, 'Spades')]
# puts cards.min.rank == 8
# puts cards.max.rank == 8

# class Card
#   include Comparable
#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end

#   def to_s
#     "#{rank} of #{suit}"
#   end

#   protected

#   def value
#     case rank
#     when 'Jack'  then 11
#     when 'Queen' then 12
#     when 'King'  then 13
#     when 'Ace'   then 14
#     else         rank
#     end
#   end

#   def suit_value
#     case suit
#     when 'Spades'   then 4
#     when 'Hearts'   then 3
#     when 'Clubs'    then 2
#     when 'Diamonds' then 1
#     end
#   end

#   def <=>(other_card)
#     if rank == other_card.rank
#       suit_value <=> other_card.suit_value
#     else
#       value <=> other_card.value
#     end
#   end
# end

# cards = [Card.new(8, 'Diamonds'),
#          Card.new(8, 'Clubs'),
#          Card.new(8, 'Spades')]
# puts cards.min
# puts cards.max

class Card
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    case rank
    when 'Jack'  then 11
    when 'Queen' then 12
    when 'King'  then 13
    when 'Ace'   then 14
    else         rank
    end
  end

  protected

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @cards.empty?
    @cards.pop
  end

  private

  def reset
    @cards = RANKS.product(SUITS).map { |pair| Card.new(*pair) }.shuffle
  end
end

# p deck = Deck.new
# p drawn = []
# p 52.times { drawn << deck.draw }
# p drawn.count { |card| card.rank == 5 } == 4
# p drawn.count { |card| card.suit == 'Hearts' } == 13

# p drawn2 = []
# p 52.times { drawn2 << deck.draw }
# p drawn != drawn2 # Almost always.

class PokerHand
  def initialize(deck)
    @cards = []
    5.times {@cards << deck.draw}
    @cards.sort!
  end

  def print
    puts @cards
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def ranks
    @cards.map { |card| card.rank }
  end

  def values
    @cards.map { |card| card.value }
  end

  def suits
    @cards.map { |card| card.suit }
  end

  def royal_flush?
    flush? && (ranks == [10, 'Jack', 'Queen', 'King', 'Ace'])
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    (ranks[0] == ranks[1]) && (ranks[1] == ranks[2]) && (ranks[2] == ranks[3]) ||
    (ranks[4] == ranks[1]) && (ranks[1] == ranks[2]) && (ranks[2] == ranks[3])
  end

  def full_house?
    pair? && three_of_a_kind?
  end

  def flush?
    suits.uniq.size == 1
  end

  def straight?
    (ranks.uniq.size == 5) && ((values[-1] - values[0]) == 4)
  end

  def three_of_a_kind?
    (ranks[0] == ranks[1]) && (ranks[1] == ranks[2]) ||
    (ranks[1] == ranks[2]) && (ranks[2] == ranks[3]) ||
    (ranks[4] == ranks[3]) && (ranks[3] == ranks[2])
  end

  def two_pair?
    ranks.uniq.size == 3 && !three_of_a_kind?
  end

  def pair?
    if three_of_a_kind?
      ranks.uniq.size == 2
    else
      ranks.uniq.size == 4
    end
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'