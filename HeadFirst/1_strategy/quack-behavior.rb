class QuackBehavior
   def quack()
   end
end

class Quack < QuackBehavior
    def quack()
        p "Quack."
    end
end

class Squack < QuackBehavior
    def quack()
        p "Squack."
    end
end

class MuteQuack < QuackBehavior
    def quack()
        p "Cannot quack."
    end
end
