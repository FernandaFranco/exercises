def gcd(num1, num2)
  min = [num1, num2].min
  min.downto(1) do |num|
    return num if num1 % num == 0 && num2 % num == 0
  end
end

# def gcd(num1, num2)
#   min, max = [num1, num2].sort
#   1.upto(min) do |n|
#     d, m = min.divmod(n)
#     p [d,m]
#     next unless m.zero?
#     return d if max % d == 0
#   end
# end

p gcd(9,15) ==3
p gcd(100, 11) == 1
p gcd(14, 28) == 14
