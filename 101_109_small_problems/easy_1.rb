def repeat(string, integer)
  integer.times { puts string }
end

repeat('Hello', 3)


def is_odd?(number)
  #number.round == number && number % 2 != 0
  number % 2 == 1
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(7.1)  # => false
puts is_odd?(-5.0) # => true

def digit_list(integer)
  integer.to_s.split("").map do |digit|
    digit.to_i
  end
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]

def count_occurrences(array)
  hash = {}
  array.each do |element|
    hash[element] ||= 0
    hash[element] += 1
  end
  hash.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

def reverse_sentence(string)
  new_sentence = []
  string.split(" ").each do |word|
    new_sentence.unshift(word)
  end
  new_sentence.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

def reverse_words(sentence)
  new_sentence = sentence.split.map do |word|
    word.reverse! if word.size >= 5
    
    word
  end
  new_sentence.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
