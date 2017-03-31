# takes a phrase
# split every whitespace
# count occurrences of same words
# return hash

class Phrase
  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence.downcase
  end

  def word_count
    result = Hash.new(0)

    sentence.scan(/\b[\w']+\b/) do |word|
      result[word] += 1
    end

    result
  end
end
