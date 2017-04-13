class PerfectNumber
end
class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number.negative?

    sum = factors(number).reduce(:+)
    if sum > number
      'abundant'
    elsif sum < number
      'deficient'
    else
      'perfect'
    end
  end

  def self.factors(number)
    (1..number/2).each_with_object([]) do |candidate, factors|
      factors << candidate if number % candidate == 0
    end
  end
end



