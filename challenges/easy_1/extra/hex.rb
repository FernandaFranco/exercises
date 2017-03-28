class Hex
  def initialize(hex_string)
    @hex_string = hex_string.downcase
    @hex = @hex_string.chars.map { |char| to_i_hex(char)}
  end

  def to_decimal
    return 0 if @hex_string =~ /[^0-9a-f]/

    @hex.reverse
        .map
        .with_index { |digit, index| digit * (16**index) }
        .reduce(:+)
  end

  private

  HEX = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

  def to_i_hex(char)
    HEX.index(char)
  end
end

p Hex.new('1e42').to_decimal

# cant convert each char to i anymore
# maybe create my own to_i

