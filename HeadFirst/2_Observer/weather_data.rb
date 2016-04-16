require "./interface.rb"

class WeatherData
  include Subject
  attr_accessor :temperature, :humidity, :pressure

  def initialize()
    super()
  end

  def measurementsChanged()
    notifyObservers();
  end

  def notifyObservers()
    @observers.each do |o|
      o.update(@temperature, @humidity, @pressure)
    end
  end

  def setMeasurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    measurementsChanged()
  end
end
