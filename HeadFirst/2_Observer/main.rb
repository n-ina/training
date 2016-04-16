require "./weather_data.rb"
require "./current_condition_display.rb"

weatherData = WeatherData.new
currentDisplay = CurrentConditionDisplay.new(weatherData)
weatherData.setMeasurements(27,65,30.4)
weatherData.setMeasurements(28,70,30.4)
