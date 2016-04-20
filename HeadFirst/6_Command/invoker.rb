# invoker
class SimpleRemoteControl
  attr_writer :slot

  def initialize
  end

  def button_pressed
    @slot.excute
  end
end

class RemoteControl
  def initialize
    @on_commands = []
    @off_commands = []

    no_command = NoCommand.new
    (0..6).each do |i|
      @on_commands[i] = no_command
      @off_commands[i] = no_command
    end
  end

  def insert_command(slot, on_command, off_command)
    @on_commands[slot] = on_command
    @off_commands[slot] = off_command
  end

  def on_button_pushed(slot)
    @on_commands[slot].excute
  end

  def off_button_pushed(slot)
    @off_commands[slot].excute
  end

  def to_s
    buffer = "\n----- Remote Controller -----\n"
    @on_commands.each do |command|
      buffer += command.class.to_s + "\n"
    end

    buffer
  end
end
