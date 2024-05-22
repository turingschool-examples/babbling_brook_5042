class Course
    attr_reader :class_name, :capacity
    def initialize(class_name, capacity)
        @class_name = class_name
        @capacity = capacity
    end
end