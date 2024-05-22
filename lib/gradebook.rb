class Gradebook
  attr_reader :name,
              :courses

  def initialize(name, courses = [])
    @name = name
    @courses = courses
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    students_in_course = {}
    @courses.each do |course|
      students_in_course[course] = course.students
    end
    students_in_course
  end

  def students_below(threshold)
    cutoff = []
    @courses.each do |course|
      course.students.each do |student|
        if student.current_grade 
    # return students with current_grade below 
end


#instructor
#courses
#add_course(course)
#list_all_students
#students_below(threshold)

