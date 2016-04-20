class Receiver
  def initialize(room)
    @name = room
  end
end

class Light < Receiver
  def on
    p "[#{@name}]Illumination is attaching."
  end

  def off
    p "[#{@name}]Illumination is going out."
  end
end

class Stereo < Receiver
  def on
    p "[#{@name}]Stereo is attaching."
  end

  def load_cd
    p 'CD is loaded.'
  end

  def adjust_volume(volume)
    p "volume is adjusted #{volume}."
  end

  def off
    p "[#{@name}]Stereo is going out."
  end
end
