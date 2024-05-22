class Course
  attr_reader :name, :capacity, :students

  def initalize(name,capacity)
    @name = name
    @capacity = capacity
    @students = []
  end
end