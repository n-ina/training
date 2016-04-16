require "./interface.rb"

class CurrentConditionDisplay < DisplayElement
  include Observer

  attr_accessor :temperature, :humidity

  def initialize(weatherData)
    @weatherData = weatherData
    @weatherData.registerObserver(self)
  end

  def update(temperature, humidity, pressure)
    super(temperature,humidity,pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    display();
  end

  def display()
    print "temperature : #{@temperature}\n"
    print "humidity : #{@humidity}\n"
  end
end
