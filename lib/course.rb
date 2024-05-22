class Course
    attr_reader :class_name, :capacity, :students
    def initialize(class_name, capacity)
        @class_name = class_name
        @capacity = capacity
        @students = []
    end

    def full?
        false
    end
end