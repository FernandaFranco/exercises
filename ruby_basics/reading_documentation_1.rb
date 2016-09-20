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

# this info is in the literals file.
# you can place an underscore to improve human readability. anywhere!

a = 1000
p a
b = 1_000
p b
c = 10_00
p c

#symbol

my_name = :fernanda

p my_name

# default arguments in the middle:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)
# => [4, 5, 3, 6]

# This is very confusing. I was expecting it would raise an exception or, 
# at least, print [4, 6, 3, 5] based on order.
# The explanation can be found in the calling_methods file.

# string class:

# easy peasy. core > classes > string

# right justify strings:

string = 'hello'

p string.rjust(10)


# class methods and instance methods:

# ::path is a class method and it's receiver is the class File. #path is a 
# instance method and it's receiver is a new File object.