class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select do |candidate|
      anagram?(candidate.downcase)
    end
  end

  private

  attr_reader :word

# with sort:
  # def anagram?(candidate)
  #   return false if candidate == word

  #   candidate.chars.sort == word.chars.sort
  # end

# without sort:
  def anagram?(candidate)
    return false if candidate == word || candidate.size != word.size

    word.squeeze.each_char do |char|
      return false unless candidate.count(char) == word.count(char)
    end

    true
  end
end
