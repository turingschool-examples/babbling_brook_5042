require 'spec_helper'

RSpec.describe Course do
  describe '#initialize' do
    it "exists" do
      course = Course.new("Calculus", 2)   

      expect(course).to be_a Course
    end

    it "has a name" do
      course = Course.new("Calculus", 2)   

      expect(course.name).to eq ("Calculus")
    end

    it "has a capacity" do
      course = Course.new("Calculus", 2)   

      expect(course.capacity).to be 2
    end

    it "has students" do
      course = Course.new("Calculus", 2)   

      expect(course.students).to eq []
    end
  end

  describe "#enroll" do
    it "can have availability" do
      course = Course.new("Calculus", 2) 

      expect(course.full?).to be false
    end

    it "can enroll a student" do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})  

      course.enroll(student1)   
      course.enroll(student2)   

      expect(course.students).to eq [student1, student2]
    end

    it "can be closed" do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})  

      course.enroll(student1)   
      course.enroll(student2)   

      expect(course.full?).to be true
    end
  end
  
end