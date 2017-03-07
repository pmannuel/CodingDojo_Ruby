class Project
    @@project_num = 0
    attr_accessor :name, :description
  def initialize(name, description)
      @name = name
      @description = description
      @@project_num += 1
      puts "Created project #{@@project_num}"
  end
  def elevator_pitch
      puts "#{@name}, #{@description}"
  end
end

project1 = Project.new("Project Rescue", "Annihilate all zombies in the lobby and rescue survivors trapped in the convenience store.")
puts project1.name
project1.elevator_pitch
