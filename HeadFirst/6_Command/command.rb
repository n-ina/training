require './receiver.rb'

# Interface for command
class Command
  def initialize(description = nil)
    @description = description
  end

  def excute
  end

  def undo
  end
end

# Null Object
class NoCommand < Command
  def excute
  end

  def undo
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

  def undo
    @light.off
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

  def undo
    @light.on
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

  def undo
    @stereo.off
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

  def undo
    @stereo.on
  end
end
