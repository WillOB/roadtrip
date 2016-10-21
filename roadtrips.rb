require './Car'
roadtrip = File.open("./roadtrip.csv")

car = Car.new(0)
cost = 0.0
gallons = 0.0

roadtrip.each_line do |line|
info = line.split(',')
gallons += info[1].to_i
car.fillUp(info[0].to_i, gallons)
cost += info[1].to_i * info[2].to_i
end


puts car.mpg
puts car.gasHog?
puts car.economyCar?
puts cost
