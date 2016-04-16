require "observer"

class WeatherData
  include Observable

  attr_accessor :temperature, :humidity, :pressure

  def initialize()
  end

  def add_observer(o)
    super(o)
  end

  def setMeasurements(temperature, humidity, pressure)
    @temperature = temperature
    @humidity = humidity
    @pressure = pressure
    changed
    notify_observers(self);
  end
end
