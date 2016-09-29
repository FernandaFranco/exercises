# -- short long short

# def short_long_short(first, second)
#   if first.size > second.size
#     second + first + second
#   else
#     first + second + first
#   end
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# -- what century is that?

# def century(year)
#   if year.to_s[-2..-1] == '00'
#     century = year.to_s[0..-3]
#   else
#     century = (year.to_s[0..-3].to_i + 1).to_s
#   end

#   suffix = case 
#   when ['11', '12', '13'].include?(century[-2..-1])
#     'th'
#   when century[-1] == '1'
#     'st'
#   when century[-1] == '2'
#     'nd'
#   when century[-1] == '3'
#     'rd'
#   else
#     'th'
#   end

#   century + suffix 
# end

def century(year)
  if year % 100 == 0
    century = (year / 100)
  else 
    century = (year / 100) + 1
  end

  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)

  case century % 10 # last digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'