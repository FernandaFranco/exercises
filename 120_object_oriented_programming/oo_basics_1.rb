# puts 'Hello'.class
# puts 5.class
# puts [1, 2, 3].class

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  attr_accessor :name
  
  include Walkable
  
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello, my name is #{name}!"
  end
  
end

kitty = Cat.new("Fittonia")

kitty.greet
kitty.name = "Fittunia"
p kitty.name
kitty.greet
kitty.walk