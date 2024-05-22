require 'spec_helper'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  it 'can initialize'do
    expect(@course).to be_an_instance_of(Course)
    expect(@student1).to be_an_instance_of(Student)
    expect(@student2).to be_an_instance_of(Student)
    expect(@course.students).to eq([])
    expect(@course.full).to be false
    expect(@course.name).to eq("Calculus")
    expect(@course.capacity).to be(2)
  end

  it 'can be full' do
    @course.enroll(@student1)
    expect(@course.students).to eq([@student1])
    @course.enroll(@student2)
    expect(@course.students).to eq([@student1, @student2])

    expect(@course.students.length).to be 2
    expect(@course.full?).to be true
  end


    
end