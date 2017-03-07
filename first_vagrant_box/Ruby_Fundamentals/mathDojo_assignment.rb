class MathDojo
    attr_reader :val
    def initialize
        @val = 0
    end
    def add(*num)
        @val += num.flatten.reduce(0, :+)
        self
    end
    def subtract(*num)
        @val -= num.flatten.reduce(0, :+)
        self
    end
end


challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).val

challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).val

puts challenge1
puts challenge2
