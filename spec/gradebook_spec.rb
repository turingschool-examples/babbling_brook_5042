require 'spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Juliet")
    @student_3 = Student.new({name: "Johnathon", age: 21, course: "Mod 1", current_grade: 94})
    @student_4 = Student.new({name: "Taylor", age: 21, course: "Mod 1", current_grade: 77})
    @student_5 = Student.new({name: "Thomas", age: 21, course: "Mod 2", current_grade: 68})
    @course_1 = Course.new("Mod 1", 2)
    @course_2 = Course.new("Mod 2", 2)
  end

  it "can initialize" do
    expect(@gradebook).to be_an_instance_of(Gradebook)
  end

  it "has an instructor name" do
    expect(@gradebook.name).to eq("Juliet")
  end

  it "has a course" do
    expect(@gradebook.courses).to eq([])
  end

  it "can add a course" do
    expect(@gradebook.courses).to eq([])
    
    @gradebook.add_course(@course_1)
    expect(@gradebook.courses).to eq([@course_1])

    @gradebook.add_course(@course_2)
    expect(@gradebook.courses).to eq([@course_1, @course_2])
  end

  it "can list students enrolled in course" do
    @course_1.enroll(@student_3)
    @course_1.enroll(@student_4)
    @course_2.enroll(@student_5)

    @gradebook.add_course(@course_1)
    @gradebook.add_course(@course_2)
    expect(@gradebook.list_all_students).to eq({@course_1 => [@student_3, @student_4], @course_2 => [@student_5]})
  end
end
