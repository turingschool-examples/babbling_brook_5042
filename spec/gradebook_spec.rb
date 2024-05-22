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

  

end