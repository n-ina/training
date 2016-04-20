require './receiver.rb'

# Interface for command
class Command
  def initialize(description)
    @description = description
  end

  def excute
  end

  def undo_excute
  end
end

# Command for light on
class LightOnCommand < Command
  def initialize(light)
    @light = light
  end

  def excute
    @light.on
  end
end

# Command for light off
class LightOffCommand < Command
  def initialize(light)
    @light = light
  end

  def excute
    @light.off
  end
end

# Command for Stereo on
class StereoOnCommand < Command
  def initialize(stereo)
    @stereo = stereo
  end

  def excute
    @stereo.on
    @stereo.load_cd
    @stereo.adjust_volume(11)
  end
end

# Command for stereo off
class StereoOffCommand < Command
  def initialize(stereo)
    @stereo = stereo
  end

  def excute
    @stereo.off
  end
end
