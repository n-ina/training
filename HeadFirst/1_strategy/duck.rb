require "./quack-behavior"
require "./fly-behavior"

class Duck
    @flyBehavior
    @quackBehavior

    def initialize()
    end

    #abstract method
    def display()
        #not implemented
    end

    def swim()
        p "swim all ducks."
    end

    def performFly()
        @flyBehavior.fly()
    end

    def performQuack()
        @quackBehavior.quack()
    end
end

class MallarDuck < Duck
    def initialize()
        @flyBehavior = FlyWithWings.new()
        @quackBehavior = Quack.new()
    end

    def display()
        p "Mallar Duck."
    end
end
