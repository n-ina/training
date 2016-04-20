require './invoker.rb'
require './command.rb'
require './receiver.rb'

simple_remote = SimpleRemoteControl.new
light = Light.new('Living room')
light_on = LightOnCommand.new(light)

simple_remote.slot = light_on
simple_remote.button_pressed

remote = RemoteControl.new
p remote.to_s

living_light = Light.new('Living Room')
living_light_on = LightOnCommand.new(living_light)
living_light_off = LightOffCommand.new(living_light)
remote.insert_command(0, living_light_on, living_light_off)

kitchen_light = Light.new('Kitchen')
kitchen_light_on = LightOnCommand.new(kitchen_light)
kitchen_light_off = LightOffCommand.new(kitchen_light)
remote.insert_command(1, kitchen_light_on, kitchen_light_off)

stereo = Stereo.new('Living Room')
stereo_on = StereoOnCommand.new(stereo)
stereo_off = StereoOffCommand.new(stereo)
remote.insert_command(2, stereo_on, stereo_off)

remote.on_button_pushed(0)
remote.undo_button_pushed
remote.on_button_pushed(1)
remote.off_button_pushed(1)
remote.on_button_pushed(2)
