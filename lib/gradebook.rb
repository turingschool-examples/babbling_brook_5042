class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor, courses)
    @instructor = instructor
    @courses = []

  end

  def add_course(course)
    course = Course.new(course.name, course.capacity)
    @courses << course
  end
end