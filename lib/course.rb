class Course
    attr_reader :name,
                :capacity,
                :students

     def initialize(name, capacity) 
        @name = name
        @capacity = capacity   
        @students = []
     end  

     def full?
      if @students == [] 
        false
      else
        @students == [2]
        true
        end
     end

    def enroll(student) 
        @students << student
       
    end
end