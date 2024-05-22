class GradeBook
  attr_reader :instructor, :courses 
  
  def initialize(instructor)
    @instructor  = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    course_student_hash = {}
    @courses.each do |course|
      course_student_hash[course] = course.students
    end
    course_student_hash
  end
end