# iterate through a range
# take unmarked
# mark all multiples
# repeat until tackled all unmarked

# class SieveOfErastosthenes
#   def initialize(limit)
#     @candidates = (2..limit).to_a
#   end

#   def primes
#     @candidates.each do |candidate|
#       @candidates.reject! { |number| number % candidate == 0 unless number == candidate } 
#     end
#     @candidates
#   end
# end

class SieveOfErastosthenes
  def initialize(limit)
    @limit = limit
    @numbers = (2..@limit).each_with_object({}) { |number, hash| hash[number] = :unmarked }
  end

  def primes
    raise ArgumentError, "There's no prime number below 2!" if @limit < 2

    @numbers.each do |number, flag|
      next if flag == :marked
      @numbers.each_key do |other_number|
        if (other_number % number == 0) && (other_number != number)
          @numbers[other_number] = :marked
        end
      end
    end
    @numbers.select {|_, flag| flag == :unmarked }.keys
  end
end

p SieveOfErastosthenes.new(1).primes