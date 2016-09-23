def meal
  return 'Breakfast'
end

puts meal # it's going to print the return value of the memthod, that is
# 'Breakfast'.

def meal
  'Evening'
end

puts meal # it prints "Evening" even without the return keyword because 
# it was the last thing the method evaluated.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal # prints "Breakfast". The method stops executing at the return line,
# therefore the statement 'Dinner' doesn't get evaluated.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal # both strings will be printed. 'Dinner' first because we're executing
# the method and it evaluates puts 'Dinner' before exiting, and 'Breakfast' because 
# the return value of the method is being printed at line 28.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal # it prints 'Dinner' and nil. nothing happens with the statement in 
# line 33, and line 34 gets evaluated (therefore printing 'Dinner') and it's
# return value is also the return value of the method. line 37 for instance
# prints the return value o the method, which is nil.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal # only Breakfast. it stops executing on the first line.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep # prints 0,1,2,3 and 4 and then a blank line? almost!
# insted of .times {block} returning nil, it returns the value of the caller

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep # 0,1,2,3,4 and 10. nothing is done with the return value of
# times.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep # 0, 1, 2, nil
# almost! when calling return without an argument, the return value of the 
#  method is nil. it is printed because p doesn't translate nil to empty string
# as puts does (puts calls method to_s).

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number # the return value of an assignment is the value of the object
# assigned. So, 1. What happened here is that true will always evaluate to true,
# so the else part of the condition never gets executed. the last line the method
# evaluates is number = 1


