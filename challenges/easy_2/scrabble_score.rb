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
      if VALUE_1.include?(char)
        score += 1
      elsif VALUE_2.include?(char)
        score += 2
      elsif VALUE_3.include?(char)
        score += 3
      elsif VALUE_4.include?(char)
        score += 4
      elsif VALUE_5.include?(char)
        score += 5
      elsif VALUE_8.include?(char)
        score += 8
      elsif VALUE_10.include?(char)
        score += 10
      end
    end
    score
  end

  def self.score(word)
    new(word).score
  end
end
