# result = (1..100).map do |number|
#            case
#            when number % 15 == 0 then "FizzBuzz"
#            when number % 3  == 0  then "Fizz"
#            when number % 5  == 0  then "Buzz"
#            else                       number
#            end
#          end

# puts result.join(" ")

result = (1..100).map do |number|
           str = ""
           str = "Fizz" if number % 3 == 0
           str += "Buzz" if number % 5 == 0
           str.empty? ? number : str
         end

puts result.join(" ")