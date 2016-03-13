class FlyBehavior
   def fly()
   end
end

class FlyWithWings < FlyBehavior
    def fly()
        p "Fly with wings."
    end
end

class FlyNoWay < FlyBehavior
    def fly()
        p "cannot fly."
    end
end

class FlyRocketPowered < FlyBehavior
    def fly()
        p "Fly with rocket."
    end
end
