# input: string of digits
# output: all consecutive numbers of length n

class Series
  def initialize(string)
    @slices = string.chars.map(&:to_i)
  end

  def slices(number)
    raise ArgumentError if number > @string.size
    @slices.each_cons(number).to_a
  end
end