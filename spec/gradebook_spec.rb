require 'spec_helper'

RSpec.describe Gradebook do
    describe '#initialize' do
        it 'creates a new gradebook' do
            instructor = Gradebook.new("Sally Teacher")
            expect(instructor).to be_a(Gradebook)
        end

        it 'returns instructors name' do
            instructor = Gradebook.new("Sally Teacher")
            expect(instructor.instructor).to eq("Sally Teacher")
        end
    end

    describe 'add_course' do
        it 'adds a course' do
            instructor = Gradebook.new("Sally Teacher")
            calculus = Course.new("Calculus", 2)
            instructor.add_course(calculus)
            expect(instructor.courses).to eq([calculus])
        end

        it 'adds multiple courses' do
            instructor = Gradebook.new("Sally Teacher")
            calculus = Course.new("Calculus", 2)
            biology = Course.new("Biology", 5)
            instructor.add_course(calculus)
            instructor.add_course(biology)
            expect(instructor.courses).to eq([calculus, biology])
        end
    end

    describe 'list_all_students' do
        it 'lists all students' do
            instructor = Gradebook.new("Sally Teacher")
            calculus = Course.new("Calculus", 2)
            student1 = Student.new(name: 'Jacob', age: 22)
            student2 = Student.new(name: 'John', age: 22)
            calculus.enroll(student1)
            calculus.enroll(student2)
            expect(instructor.list_all_students(calculus)).to eq({Course: [student1, student2]})
        end
    end

    describe 'students_below(threshold)' do
        it 'lists students below threshold' do
            instructor = Gradebook.new("Sally Teacher")
            calculus = Course.new("Calculus", 2)
            student1 = Student.new(name: 'Jacob', age: 22)
            student2 = Student.new(name: 'John', age: 22)
            student3 = Student.new(name: 'Jill', age: 22)
            calculus.enroll(student1)
            calculus.enroll(student2)
            calculus.enroll(student3)
            student1.logged_score(90)
            student2.logged_score(60)
            student3.logged_score(68)
            #assuming threshold is 70 in this case....
            expect(instructor.students_below(calculus, 70)).to eq([student2, student3])
        end
    end
end