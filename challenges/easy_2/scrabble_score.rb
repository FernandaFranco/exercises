VALUE_1 = %w(A E I O U L N R S T)
VALUE_2 = %w(D G)
VALUE_3 = %w(B C M P)
VALUE_4 = %w(F H V W Y)
VALUE_5 = %w(K)
VALUE_8 = %w(J X)
VALUE_10 = %w(Q Z)

class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    score = 0
    return score if @word.nil?
    @word.chars.each do |char|
      char = char.upcase
      case
      when VALUE_1.include?(char) then score += 1
      when VALUE_2.include?(char)then score += 2
      when VALUE_3.include?(char)then score += 3
      when VALUE_4.include?(char)then score += 4
      when VALUE_5.include?(char)then score += 5
      when VALUE_8.include?(char)then score += 8
      when VALUE_10.include?(char)then score += 10
      end
    end
    score
  end

  def self.score(word)
    new(word).score
  end
end
