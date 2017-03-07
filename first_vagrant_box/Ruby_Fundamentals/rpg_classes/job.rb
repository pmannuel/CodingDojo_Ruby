require_relative 'human'

class Wizard < Human
    def initialize
      super
        puts "You shall not pass!"
        @health = 150
        @intelligence = 200
    end

    def heal
        @health += 10
    end

    def MeteorShower(object)
        if object.class.ancestors.include?(Human)
            puts "Attacked an adventurer"
            object.health = 1
            puts "FATAL BLOW! #{object.name}'s' health: #{object.health}"
        else
            puts "#{object.capitalize} destroyed. Receive #{rand(10..100)}  golds."
        end
        self
    end
end

class Ninja < Human
    def initialize
      super
      @stealh = 175
    end

    def steal(victim)
      attack(victim)
      @health += 10
    end

    def get_away
      @health -= 15
    end
end

class Samurai < Human
    attr_reader :name
    @@count = 0

    def initialize(name)
      super
      @health = 200
      @name = name
      @@count += 1
      puts "#{@name}: I shall defend my honor!"
    end

    def death_blow
      if obj.class.ancestors.include?(Human)
        obj.health = 1
        true
      else
        false
      end
    end

    def meditate
      @health = 200
    end

    def self.count
      @@count
    end
end

adventurer1 = Wizard.new
adventurer2 = Samurai.new("Rae")

adventurer1.MeteorShower(adventurer2)
