require 'spec_helper'

# pry(main)> require './lib/course'
# # => true

# pry(main)> require './lib/student'
# # => true


RSpec.describe Course do

  before(:each) do
    @course = Course.new("Calculus", 2)
    # pry(main)> course = Course.new("Calculus", 2)    
    # # => #<Course:0x00007fa0a69be328...>

    @student1 = Student.new({name: "Morgan", age: 21})
    # pry(main)> student1 = Student.new({name: "Morgan", age: 21})
    # # => #<Student:0x00007fa0a80ae588...>

    @student2 = Student.new({name: "Jordan", age: 29})
    # pry(main)> student2 = Student.new({name: "Jordan", age: 29})    
    # # => #<Student:0x00007fa0a814f4d8...> 
  end

  it "can initialize" do
    expect(@course).to be_an_instance_of(Course)
    
    # pry(main)> course = Course.new("Calculus", 2)    
    # # => #<Course:0x00007fa0a69be328...>
  end

  it "has a name" do
    expect(@course.name).to eq("Calculus")
    
    # pry(main)> course.name
    # # => "Calculus"
  end

  it "has a course capacity" do
    expect(@course.capacity).to eq(2)
    
    # pry(main)> course.capacity
    # # => 2
  end

  it "tracks # of students enrolled in class" do
    expect(@course.students).to eq([])
    
    # pry(main)> course.students
    # # => []
  end

  it "can enroll students into courses" do
    @course.enroll(@student1)
    # pry(main)> course.enroll(student1)    
    @course.enroll(@student2)
    # pry(main)> course.enroll(student2)    
    
    expect(@course.students).to eq([@student1, @student2])
    # pry(main)> course.students
    # # => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]
  end
  
  it "checks whether or not the course is full" do
    expect(@course.full?).to eq(false)
    # pry(main)> course.full?
    # # => false
    
    @course.enroll(@student1)
    # pry(main)> course.enroll(student1)    
    @course.enroll(@student2)
    # pry(main)> course.enroll(student2) 

    expect(@course.full?).to eq(true)
    # pry(main)> course.full?
    # # => true
  end
end











