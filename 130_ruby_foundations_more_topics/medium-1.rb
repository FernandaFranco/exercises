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

