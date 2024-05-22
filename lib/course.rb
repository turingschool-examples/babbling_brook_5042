class Course
  attr_reader :name,
              :capacity,
              :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def enroll(pupil)
    @students << pupil
  end

  def full?
    if @students.length < 2
      false
    elsif @students.length == 2
      true
    end
  end
end