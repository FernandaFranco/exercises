class Integer
  DECIMALS = [""] + %w(I II III IV V VI VII VIII IX)
  SSS = [""] + %w(X XX XXX XL L LX LXX LXXX XC)


  def to_roman
    result = []
    self.to_s.chars.reverse.each_with_index do | char, index |
      result.unshift DECIMALS[char.to_i] if index == 0
      result.unshift SSS[char.to_i] if index == 1
    end

    result.join
  end
end
