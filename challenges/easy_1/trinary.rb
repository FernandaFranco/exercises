class Trinary
  def initialize(string)
    @string = string
    @trinary_digits = @string.chars.map(&:to_i)
  end

  def to_decimal
    return 0 if @string =~ /\D|[3-9]/
    @trinary_digits.reverse
                   .map
                   .with_index { |digit, index| digit*(3**index) }
                   .reduce(:+)
  end
end