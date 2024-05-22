require 'spec_helper'

RSpec.describe GradeBook do
  describe '#initialize' do
    it "exists" do
      gradebook = GradeBook.new("Mr. Scrynt")   

      expect(gradebook).to be_a GradeBook
    end

    it "can have an instructor" do
      gradebook = GradeBook.new("Mr. Scrynt")  

      expect(gradebook.instructor).to eq ("Mr. Scrynt")
    end

    it "can have courses" do
      gradebook = GradeBook.new("Mr. Scrynt")  

      expect(gradebook.courses).to eq []
    end
  end

  describe "#add_course" do
    it "can add a course" do
      gradebook = GradeBook.new("Mr. Scrynt")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Physics", 4)

      gradebook.add_course(course1)
      gradebook.add_course(course2)

      expect(gradebook.courses).to eq [course1, course2]
    end
  end

  describe "#list_all_students" do
    it "can list students in a course" do
      gradebook = GradeBook.new("Mr. Scrynt")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Physics", 4)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})  

      course1.enroll(student1)
      course1.enroll(student2)
      gradebook.add_course(course1)

      expect(gradebook.list_all_students).to eq ({course1 => [student1, student2]})
    end

    it "can list all students in all courses" do
      gradebook = GradeBook.new("Mr. Scrynt")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Physics", 4)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})  

      course1.enroll(student1)
      course1.enroll(student2)
      course2.enroll(student1)
      course2.enroll(student2)
      gradebook.add_course(course1)
      gradebook.add_course(course2)

      expect(gradebook.list_all_students).to eq ({
                                                  course1 => [student1, student2], 
                                                  course2 => [student1, student2]
                                                }) 
    end
  end

  

end