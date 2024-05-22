require 'spec_helper'

RSpec.describe Gradebook do 
    before(:each) do
        @gradebook = Gradebook.new("Instructor_1")
        @course_1 = Course.new("Calculus", 2)
        @student_1 = Student.new(name: "Mike", age: 22)
        @student_2 = Student.new(name:"Sarah", age: 32)
        @student_3 = Student.new(name:"Tom", age: 45)
    end
        

    it 'creates a gradebook for each instructor 'do

        expect(@gradebook.instructor).to eq("Instructor_1")

    end


    describe "add_course" do

        it "will add a course add a course to a gradebook" do
            @gradebook.add_course(@course_1)
            expect(@gradebook.courses).to include (@course_1)
        end
    end


    describe "list_all_students" do

        it "will return a list of students in a class" do
        @course_1.enroll(@student_1)
        @course_1.enroll(@student_2)
        @gradebook.add_course(@course_1)

        expect(@gradebook.list_all_students).to eq({ @course_1 => [@student_1, @student_2]})
        end
    end




end