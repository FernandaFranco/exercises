# iterate through a range
# take unmarked
# mark all multiples
# repeat until tackled all unmarked

class SieveOfErastosthenes
  def initialize(limit)
    @candidates = (2..limit).to_a
  end

  def primes
    @candidates.each do |candidate|
      @candidates.reject! { |number| number % candidate == 0 unless number == candidate } 
    end
    @candidates
  end
end