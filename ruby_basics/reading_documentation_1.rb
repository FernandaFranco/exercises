# where to find documentation:

# the unofficial but most reliable Ruby-Doc.org. It's the only one I've used so
# far

# while loops:

# inside the file control_expressions. while is not a part of a class but part
# of the language itself (basic syntax, control methods).

# return value of while:

# the return of the while loop is nil unless a break provides a value to return.

# return value of break:

# it returns the value passed as an argument. if no argument is passed then nil.

a = 0
b = while true
      break a if a > 10
      a += 1
    end

p b

# break is "part of the language" and can be found in the file for control 
# expressions, but it's also a method in the Object class. As a method, it 
# always returns something, even if that is nil.

# large numbers:

# you can place an underscore to improve human readability. anywhere!

a = 1000
p a
b = 1_000
p b
c = 10_00
p c