# code here!
require 'pry'
class School

  def initialize(test)
    @roster = {}

  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade]
       @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    self.each do |grades, students|
      students.sort {|a, b| a <=> b}
    end
    @roster.sort.to_h
    end

end
