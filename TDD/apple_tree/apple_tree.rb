class AppleTree
  attr_accessor :age
  attr_reader :height, :apple_count

  def initialize
    @age = 0
    @height = 7
    @apple_count = 0
  end

  def goneby
    @age += 1

    if @age > 10
      puts "decaying..."
    elsif @age < 4
      puts "Little tree is working hard to one day produce apples :>"
    else
      @height *= 1.1
      @apple_count += 2
    end

    self
  end

  def pickapples
    puts "All apples were picked!"
    @apple_count = 0
    self
  end
end
