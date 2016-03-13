require "./duck"

#create Mallard duck
mallard = MallarDuck.new()
mallard.performQuack()
mallard.performFly()

#create Model duck
model = ModelDuck.new()
model.performQuack()
model.performFly()

#changing behavior
model.setFlyBehavior(FlyRocketPowered.new())
model.performFly()
