require 'spec_helper'

RSpec.describe Course do
    describe '#initialize' do
        it 'creates a new course' do
            course = Course.new("Calculus", 2)
            expect(course).to be_a(Course)
        end

        it 'returns correct passed arguments' do
            course = Course.new("Calculus", 2)
            expect(course.class_name).to eq("Calculus")
            expect(course.capacity).to eq(2)
        end

        it 'returns an empty array' do
            course = Course.new("Calculus", 2)
            expect(course.students).to eq([])
        end
    end

    describe 'full?' do
        it 'returns false if course is not full' do
            course = Course.new("Calculus", 2)
            expect(course.full?).to eq(false)
        end
    end

    describe 'enroll' do
        it 'enrolls a student' do
            student1 = Student.new(name: 'Jacob', age: 22)
            student2 = Student.new(name: 'John', age: 22)
            course = Course.new("Calculus", 2)
            course.enroll(student1)
            course.enroll(student2)
            expect(course.students).to eq([student1, student2])
        end
    end
end