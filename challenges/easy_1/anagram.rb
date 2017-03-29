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

    word.squeeze.chars.all? do |char|
      candidate.count(char) == word.count(char)
    end
  end
end
