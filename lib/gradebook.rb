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

  def students_below(threshold)
    course_student_hash = list_all_students
    student_list = []
    course_student_hash.each do |course, students|
      students.each do |student|
        student_list << student if student.grade < threshold
      end
    end
    student_list.uniq
  end

end