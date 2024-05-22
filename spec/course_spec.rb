require './lib/course'
require './lib/student'
require 'pry'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

 describe Course do
    it "is an instance of Course"  do
       @course = Course.new("Calculus", 2) 
       expect(@course).to be_a Course
    end

    it "has attributes" do
        @course = Course.new("Calculus", 2) 
        expect(@course.name).to eq("Calculus")
        expect(@course.capacity).to eq(2)
    end 
    
    it 'has can have students' do
        @course = Course.new("Calculus", 2) 
        expect(@course.students).to eq([])
        # @student = Student.new({name: "Morgan", age: 21}) 
    end

    it 'can check if course is empty' do
        @course = Course.new("Calculus", 2) 
        expect(@course.full?).to eq(false)
    end

    it 'can enroll students in course' do
        @course = Course.new("Calculus", 2) 
        # expect(@course.students).to eq([])
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29}) 
        expect(@course.enroll(student1)).to eq([student1])
        expect(@course.enroll(student2)).to eq([student1, student2])
        expect(@course.full?).to eq(true)
    end
 end   