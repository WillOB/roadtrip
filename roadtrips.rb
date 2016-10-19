require './Car'
File.open("./roadtrip.csv")

def mpg(list)
  list.each_line do |line|
  info = line.split(',')
  end
  car = Car.new(info[0].to_i, info[1].to_i, info[2].to_i)
