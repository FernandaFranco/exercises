# input: string of digits
# output: all consecutive numbers of length n

class Series
  def initialize(string)
    @string = string
  end

  def slices(number)
    raise ArgumentError if number > @string.size

    array = @string.split('').map(&:to_i)
    array.each_cons(number).to_a
  end
end