class Gradebook

  
               

    attr_accessor :instructor, #using attr_accessor here because it says dynamically
                                #and be able to read
                  :courses
  

    def initialize(instructor) #not sure about these yet
        @instructor = instructor
        @courses = []
        #students go in the courses so I don't think I list them
        #here yet.
    end

    def add_course(course)
#added these as I ran out of time
    end

    def list_all_students
#added these as I ran out of time but would have had to have these
    end

    def students_below(threshold)
        #same here
    end


end