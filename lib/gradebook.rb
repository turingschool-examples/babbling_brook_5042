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

    def all_grades
        grades = @courses.map do |student|
            student.students.map do |student|
                student.grade
            end
        end
        {Course: grades.flatten}
    end

    def students_in_range(min, max)
        grades = @courses.map do |course|
            course.students.select do |student|
                student.grade >= min && student.grade <= max
            end
        end
        grades.flatten
    end
end