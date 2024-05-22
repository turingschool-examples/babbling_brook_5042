class Course
    attr_reader :name, :capacity, :students
  
    def initialize(name, capacity)
      @name = name
      @capacity = capacity
      @students = []
    end
  
    def enroll(student)
      @students << student if @students.size < @capacity
    end
  
    def full?
      @students.length >= @capacity
    end
  end
  