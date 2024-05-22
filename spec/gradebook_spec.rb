require 'spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Juliet", courses = [])
    @student_1 = Student.new({name: "Johnathon", age: 21, course: "Mod 1", current_grade: 94})
    @student_2 = Student.new({name: "Taylor", age: 21, course: "Mod 1", current_grade: 77})
    @student_3 = Student.new({name: "Thomas", age: 21, course: "Mod 2", current_grade: 68})
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
    
    @gradebook.add_course("Mod 1")
    expect(@gradebook.courses).to eq(["Mod 1"])

    @gradebook.add_course("Mod 2")
    expect(@gradebook.courses).to eq(["Mod 1", "Mod 2"])
  end

  it "can list students enrolled in course" do
    expect(@gradebook.list_all_students).to eq({"Mod 1" => [@student_1, @student_2], "Mod 2" => [@student_3]})
  end
end
