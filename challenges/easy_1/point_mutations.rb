# compare two strings
# if different lengths, compare over the shorter length
# for each index, check if different chars
# sum amount of differences

# select shorter
# iterate through the shorter string
# each char: equal? do not count : count
# end iteration

# return count

class DNA
  def initialize(strand_1)
    @strand_1 = strand_1
  end

  # def hamming_distance(strand_2)
  #   shorter_strand, longer_strand = @strand_1.size < strand_2.size ? [@strand_1, strand_2] : [strand_2, @strand_1]
  #   shorter_strand.each_char
  #                 .with_index
  #                 .count do |char, index|
  #     char != longer_strand[index]
  #   end
  # end

  def hamming_distance(strand_2)
    min_length = [strand_1.size, strand_2.size].min

    0.upto(min_length-1).count do |index|
      strand_1[index] != strand_2[index]
    end
  end

  private

  attr_reader :strand_1
end
