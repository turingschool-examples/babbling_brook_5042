class Gradebook
    attr_reader :instructor, :courses
    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students(course)
        {Course: course.students}
    end

    def students_below(course, threshold)
        course.students.select do |student|
            student.grade < threshold
        end
    end
end