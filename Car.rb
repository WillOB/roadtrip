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
    else
    return (endMiles - startMiles) / gallons
    end
  end

  def gasHog?
    mpg < 15.0
  end

  def economyCar?
    mpg > 30.0
  end

end

#test = Car.new(50)
#test.fillUp(100, 5)
#puts test.mpg



#puts test.gasHog?
#puts test.economyCar?
