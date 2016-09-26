car = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}

car[:year] = 2003

car.delete(:mileage)

p car

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "A #{key} value is #{value}."
end

half_numbers = numbers.map do |_, value|
                 value / 2
               end
               
p half_numbers

low_numbers = numbers.select! do |_, value|
                value < 25
              end

p low_numbers
p numbers

autos = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998
  }
}

p autos[:truck]

car = [
  [:type, 'sedan'],
  [:color, 'blue'],
  [:year, 2003]
  ]
  
p car