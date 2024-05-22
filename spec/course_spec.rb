require './lib/course'
require './lib/student'

RSpec.describe Course do
    it 'has a course name and capacity' do
        course = Course.new("Calculus", 2)
        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
    end

    it 'can enroll students' do
        course = Course.new("Calculus", 2)
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})
        course.enroll(student1)
        course.enroll(student2)
        expect(course.students).to eq([student1, student2])
    end

end