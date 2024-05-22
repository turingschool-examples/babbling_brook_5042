class Course
  attr_reader :name,:students, :capacity, :full, :enroll

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @full = false
  end

  def enroll(student)
    @students << student
  end

  def full?
    if @students.length == @capacity
      true
    end
  end

end