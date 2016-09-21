a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a # it will print 7. the method doesn't perform a destructive call on it's
# receiver. numbers are imutable objects in ruby, so b merely references a new 
# object when the method is called instead of the method changing the value of
# the object b references.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a # it's the same logic from the above. the variable a outside the method
# and the variable a inside the method are not the same and have different 
# scopes. methods are self-contained with respect to local variables

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a # still 7. now my_value returns the same object it is passed to it.
# it creates a new variable named a that only exists inside the scoped of the 
# method, and has nothing to do with var a outside the method.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a) # returns '-'
puts a # outputs "Xy-zy" because the method mutated the caller. By using the
# method []= it reassigned a new object to the element in index 2 of the string
# passed, therefore changing the string object referenced by b, and also by a.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a # this is an excellent question. I would say it doesn't mutate the object
# referenced by a because it's a mere reassignment. b stops referencing the same
# object a does and points to a new object now.

a = 7

def my_value(b)
  b = a + a
end

#my_value(a) # will throw an error. the var a is not initialized inside the 
# scope of the method.
puts a # still 7.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a # a block! it will output 3 because i'm reassigning the var a (initialized
# outside the block) inside the block; it's the very same variable now pointing
# to a new object when we leave the iteration.

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a # beware of the catch! the var a is not defined outside the scope of the
# block, so it was never initialized outside the block, it can't exist
# outside. the var a is local to the scope of the block. if it was defined 
# outside, it would be also local to the outside. 

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a # still 7. the a which is argument to the block is a new var that points
# to the elements of array. so the expression inside the block does not refer to 
# the var a defined outside, but to the argument a of the block. this is called 
# shadowing.

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array) # throws an exception.
puts a # still 7. the a in the method definition is local to the block because
# variables are local to methods. therefore the block will fail because a is not
# defined anywhere before the increment.






