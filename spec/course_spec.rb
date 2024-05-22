require './lib/course'
require './lib/student'

class Course
    attr_reader(:name, :capacity, :students)
    def initialize(course)
        @course = course
        puts "course"
    end
end     

course = Course.new("Calculus", 2)
course.name = "Calculus"
course.capacity = 2
course.students = []
course.full? = false

student1 = Student.new({name: "Morgan", age: 21})
student2 = Student.new({name: "Jordan", age: 29})
course.enroll(student1)
course.enroll(student2)
course.students
course.full? = true