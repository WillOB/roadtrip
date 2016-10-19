class Car

  attr_accessor :startMiles, :endMiles, :gallons

#  def initialize(startMiles, endMiles, gallons)
  def initialize(startMiles)
    @startMiles = startMiles
#    @endMiles = endMiles
#    @gallons = gallons
  end

  def fillUp(miles, gallons)
    @endMiles = miles
    @gallons = gallons
  end


  def mpg
    if gallons == 0
      return "cannot be determined"
    end
    return (endMiles - startMiles) / gallons
  end

#  def gasHog?
#    mpg < 15.0
#  end

#  def economyCar?
#    mpg > 30.0
#  end

end

test = Car.new(0.0)
test.fillUp(450.0, 9.0)
puts test.mpg
#test = Car.new(0.0)
#puts test.fillUp(450.0, 9.0).mpg



#puts test.gasHog?
#puts test.economyCar?
