require './lib/course'
require './lib/student'
require 'pry'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

    RSpec.describe Gradebook do
        before(:each) do
            @instructor = Gradebook.new("Gloria") 
            @course = Course.new(["Calculus", 2]) 
            @student = Student.new({name: "Morgan", age: 21}) 
        end

   describe Gradebook do
        it "is an instance of gradebook"  do
          @instructor = Gradebook.new("Gloria") 
          expect(@instructor).to be_an_instance_of(Gradebook)
        end  
    
        it "has attributes" do
            @instructor = Gradebook.new("Gloria") 
            expect(@instructor.name).to eq("Gloria")
            # @course = Course.new("Calculus", 2) 
            # student1 = Student.new({name: "Morgan", age: 21})
            # student2 = Student.new({name: "Jordan", age: 29}) 
            # expect(@course.enroll(student1)).to eq([student1])
            # expect(@course.enroll(student2)).to eq([student1, student2])
           
         end
        end     
    end  

#     3. A gradebook can list all the students in its courses.
# 4. A gradebook can return a list of students whose grades are below a given threshold.

# Method Name                 | Return Value (type)
# -----------                 | -------------------
# `instructor`                | `String`
# `courses`                   | `Array` of `Course` objects
# `add_course(course)`        | `Array` of `Course` objects including the new one just added.
# `list_all_students`         | `Hash` where the `key` is a `Course` object and the `value` is an `Array` of `Student` objects (see example below)
# `students_below(threshold)` | `Array` of `Student` objects

# ```ruby
# # list_all_students

# {
#   <Course> => [<Student>, <Student>],
#   <Course> => [<Student>]
# }
# ```