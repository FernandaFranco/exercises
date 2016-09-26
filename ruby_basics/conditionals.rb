sun = ['visible', 'hidden'].sample

puts "The sun is so bright!" if sun == 'visible'

puts "The clouds are blocking the sun!" unless sun == 'visible'

boolean = [true, false].sample

puts boolean ? "I'm true!" : "I'm false!"

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

# It will always output the former. number points to integer 7 that
# evaluates to true when used in a condition. 

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts 'Go!'
when 'yellow'
  puts 'Slowdown!'
when 'red'
  puts 'Stop!'
end

if (stoplight == 'green')
  puts 'Go'
elsif (stoplight == 'yellow')
  puts 'Slowdown' 
else
  puts 'Stop'
end

status = ['awake', 'tired'].sample

command = if status == 'awake'
            'Be productive!'
          else
            'Go to sleep!'
          end
          
puts command

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end