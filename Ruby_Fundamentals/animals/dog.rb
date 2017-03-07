require_relative 'mammal'
class Dog < Mammal
    def walk
        @health -= 5
        self
    end
    def run
        @health -= 10
        self
    end
    def pet
        @health += 5
        self
    end
end

class CoolDog < Mammal
    def walk(times)
        @health -= 5*times
        self
    end
    def run(times)
        @health -= 10*times
        self
    end
    def pet(times)
        @health += 5*times
        self
    end
end

assignment = CoolDog.new.walk(3).run(2).pet(1).display_health

puts assignment
