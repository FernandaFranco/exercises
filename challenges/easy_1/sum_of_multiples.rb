class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors
  end

  def to(number)
    multiples = (1...number).select do |value| 
      @factors.any? {|factor| value % factor == 0 }
    end
  
    multiples.reduce(0,:+)
  end

  def self.to(number)
    new(3,5).to(number)
  end
end

# find multiples of 3 and 5 until hit number
# sum them