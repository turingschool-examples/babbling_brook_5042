require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'initializes with a name and capacity' do
    course = Course.new("Calculus", 2)
    expect(course).to be_an_instance_of(Course)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  it 'starts empty' do
    course = Course.new("Calculus", 2)
    expect(course.students).to eq([])
  end

  it 'can check if course is full' do
    course = Course.new("Calculus", 2)
    expect(course.full?).to eq(false)
  end

  it 'can add students' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course.enroll(student1)
    course.enroll(student2)
    expect(course.students).to include(student1, student2)
    expect(course.full?).to eq(true)
  end
end
