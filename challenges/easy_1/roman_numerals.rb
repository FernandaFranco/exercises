class Integer
  GROUPS = [
    %w(I V X),
    %w(X L C),
    %w(C D M),
    %w(M)
  ]


  def to_roman
    result = []
    self.to_s.chars.reverse.each_with_index do | char, index |
      digit = char.to_i
      case
      when digit < 4 then result << GROUPS[index][0] * digit
      when digit == 4 then result << GROUPS[index][0] + GROUPS[index][1]
      when digit < 9 then result << GROUPS[index][1] + GROUPS[index][0] * (digit-5)
      when digit == 9 then result << GROUPS[index][0] + GROUPS[index][2]
      end
    end

    result.reverse.join
  end
end
