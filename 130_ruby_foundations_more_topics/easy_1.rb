# class Tree
#   include Enumerable

#   def each

#   end
# end

# Tree.new.select(&:odd?)



# def compute
#   return "Does not compute." unless block_given?
#   yield
# end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'

# def compute(arg)
#   return "Does not compute." unless block_given?
#   yield(arg)
# end

# p compute(5) { |v| v + 3 } == 8
# p compute('b') { |l| 'a' + l } == 'ab'
# p compute(100) == 'Does not compute.'

# takes sorted array
# finds missing integers between each pair of values
# returns missing values array

# def missing(array)
#   result = []

#   array.each_index do |idx|
#     break if array[idx + 1] == nil
#     missing_integers = (array[idx + 1] - array[idx]) - 1
#     unless missing_integers == 0
#       1.upto(missing_integers) { |value| result << array[idx] + value}
#     end
#   end

#   result
# end

# def missing(array)
#   result = []

#   array.each_cons(2) do |current, nxt|
#     missed = (nxt - current) - 1
#     unless missed == 0
#       1.upto(missed) { |value| result << (current + value)}
#     end
#   end

#   result
# end

# def missing(array)
#   result = []

#   array.each_cons(2) do |first, second|
#     result.concat(((first + 1)...second).to_a)
#   end

#   result
# end

# p missing([-3, -2, 1, 5]) #== [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) #== []
# p missing([1, 5]) #== [2, 3, 4]
# p missing([6]) #== []

# def divisors(integer)
#   (1..integer).select do |candidate|
#     integer % candidate == 0
#   end
# end

def divisors(integer)

  
end

p divisors(1) #== [1]
p divisors(7) #== [1, 7]
p divisors(12) #== [1, 2, 3, 4, 6, 12]
p divisors(98) #== [1, 2, 7, 14, 49, 98]
p divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357)