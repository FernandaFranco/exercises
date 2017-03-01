# class Octal
#   def initialize(octal_string)
#     @octal_strings = octal_string.split('')
#     @octal = @octal_strings.map(&:to_i)
#   end

#   def to_decimal
#     return 0 if invalid?

#     @octal.map!.with_index do |digit, index|
#       digit * (8**(@octal.size - index - 1))
#     end
#     @octal.reduce(:+)
#   end

#   private

#   def invalid?
#     @octal_strings.any? { |string| string.to_i.to_s != string } ||
#     @octal.any? { |digit| digit >= 8 }
#   end
# end

class Octal
  def initialize(octal_string)
    @octal_string = octal_string
    @octal = @octal_string.split('').map(&:to_i)
  end

  def to_decimal
    return 0 if invalid?

    @octal.map!.with_index do |digit, index|
      digit * (8**(@octal.size - index - 1))
    end
    @octal.reduce(:+)
  end

  private

  def invalid?
    @octal_string =~ /\D|[8-9]/
  end
end
