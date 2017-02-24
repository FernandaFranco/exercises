# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     record(yield) if block_given?
#   end

#   def play
#     puts @recordings.last
#   end
# end

# listener = Device.new
# p listener.listen { "Hello World!" }
# p listener.listen
# listener.play # Outputs "Hello World!"

# class TextAnalyzer
#   def process
#     # your implementation

#     file = File.open('sample_text.txt', 'r')
#     yield(file.read)
#     file.close
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "#{file.split("\n\n").count} paragraphs" }
# analyzer.process { |file| puts "#{file.split("\n").count} line" }
# analyzer.process { |file| puts "#{file.split(" ").count} words" }

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Let's start gathering food."
# end

# gather(items) { |produce| puts "#{produce.join(', ')}" }

# def run(gear)
#   yield(gear)
# end

# gear = %w(shirt phone shorts shoes)

# run(gear) { |_,_, *essentials| puts "You only really need #{essentials.join(" and ")} when running"}

# def method(array)
#   yield(array)
# end

# birds = %w(raven finch hawk eagle)
# birds # => ['raven','finch','hawk','eagle']

# method(birds) { |_, _, *birds_of_prey| puts birds_of_prey }

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do | *produce, wheat |
#   puts produce.join(', ')
#   puts wheat
# end

# gather(items) do | apples, *produce, wheat |
#   puts apples
#   puts produce.join(', ')
#   puts wheat
# end

# gather(items) do | apples, *produce |
#   puts apples
#   puts produce.join(', ')
# end

# gather(items) do | apples, corn, cabbage, wheat|
#   puts "#{apples}, #{corn}, #{cabbage} and #{wheat}"
# end

# # Group 1
# def check_return_with_proc
#   my_proc = proc { return }
#   my_proc.call
#   puts "This will never output to screen."
# end

# p check_return_with_proc

# # Group 2
# my_proc = proc { return }

# def check_return_with_proc_2(my_proc)
#   my_proc.call
# end

# p check_return_with_proc_2(my_proc)

# # Group 3
# def check_return_with_lambda
#   my_lambda = lambda { return }
#   my_lambda.call
#   puts "This will be output to screen."
# end

# p check_return_with_lambda

# # Group 4
# my_lambda = lambda { return }
# def check_return_with_lambda(my_lambda)
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda(my_lambda)

# # Group 5
# def block_method_3
#   yield
# end

# block_method_3 { return }

# def convert_to_base_8(n)
#   n.to_s(8).to_i # replace these two method calls
# end

# # The correct type of argument must be used below
# base8_proc = method(:convert_to_base_8).to_proc

# # We'll need a Proc object to make this code work. Replace `a_proc`
# # with the correct object
# p [8,10,12,14,16,33].map(&base8_proc)

# factorials = Enumerator.new do |yielder|
#   number, factorial = 0, 1
#   loop do
#     yielder << factorial
#     number, factorial = number+1, (number+1)*factorial
#   end
# end

# p factorials.next
# p factorials.next
# p factorials.next
# p factorials.next
# p factorials.next
# p factorials.next
# p factorials.next

# # p factorials.rewind

# # p factorials.take(7)

# factorials.each_with_index do |num, idx|
#   puts num
#   break if idx == 6
# end

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if block_given? && yield(array[index - 1], array[index])
      next if !block_given? && (array[index - 1] <= array[index])
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
    
  nil
end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [5, 3, 7]
# bubble_sort!(array) { |first, second| first >= second }
# p array == [7, 5, 3]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = [6, 12, 27, 22, 14]
# bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
# p array == [14, 22, 12, 6, 27]

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array)
# p array == %w(Kim Pete Tyler alice bonnie rachel sue)

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
# p array == %w(alice bonnie Kim Pete rachel sue Tyler)

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      if block_given?
        next if yield(array[index - 1]) <= yield(array[index])
      else
        next if array[index - 1] <= array[index]
      end
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
    
  nil
end

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |value| value.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
