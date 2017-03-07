class Human
    attr_accessor :strength, :intelligence, :stealth, :health

    def initialize(*args)
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(object)
        if object.class.ancestors.include?(Human)
            puts "Attacked an adventurer"
            object.health -= @strength
            puts "Enemy's health: #{object.health}"
        else
            puts "#{object.capitalize} destroyed. Receive #{rand(10..100)}  golds."
        end
        self
    end

    def stats
        puts "Strength: %d, Intelligence: %d, Stealth: %d, Health: %d" % [@strength, @intelligence, @stealth, @health]
    end
end

# Tammy_of_Wind_Valley = Human.new
# Elon_The_Great = Human.new.attack(Tammy_of_Wind_Valley).attack(Tammy_of_Wind_Valley)
