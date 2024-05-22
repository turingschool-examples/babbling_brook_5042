require 'spec_helper'

RSpec.describe Course do
    before(:each) do

        @student1 = Student.new({name: "Morgan", age: 21})
        @student2 = Student.new({name: "Jordan", age: 29}) 
        @course = Course.new( "Calculus", 2)
    end
    
    describe "full?" do
        it "tests to see if the course is at capacity?" do
            
            expect(@course.full?).to eq(false)
        end

    end

    describe "enroll" do

        it "adds a student to the course" do
            expect(@course.enroll(@student1)).to eq(true)
            expect(@course.enroll(@student2)).to eq(true)
        end
    end
    
    
end
