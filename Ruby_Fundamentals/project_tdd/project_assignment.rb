class Project
    @@project_num = 0
    attr_accessor :name, :description
  def initialize(name="nameless", description="none")
      @name = name
      @description = description
      @@project_num += 1
      puts "Created project #{@@project_num}"
  end
  def elevator_pitch
      puts "#{@name}, #{@description}"
      return "#{@name}, #{@description}"
  end
end
