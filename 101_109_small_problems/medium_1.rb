# -- rotation

def rotate_array(array)
  p array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]

def rotate_string(string)
  p string[1..-1] + string[0]
end

rotate_string('amor')

def rotate_integer(integer)
  p (integer.to_s[1..-1] + integer.to_s[0]).to_i
end

rotate_integer(121)