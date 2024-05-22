require 'spec_helper'

RSpec.describe Student do
    describe '#initialize' do
        it 'creates a new student' do
            student = Student.new(name: 'John', age: 22)
            expect(student.name).to eq('John')
            expect(student.age).to eq(22)
        end
    end

    describe 'scores' do
        it 'returns an empty array' do
            student = Student.new(name: 'Jacob', age: 22)
            expect(student.name).to eq('Jacob')
            expect(student.age).to eq(22)
            expect(student.scores).to eq([])
        end
    end

    describe '#logged_score' do
        it 'logs a score' do
            student = Student.new(name: 'Jacob', age: 22)
            student.logged_score(90)
            expect(student.scores).to eq([90])
        end

        it 'logs multiple scores' do
            student = Student.new(name: 'Jacob', age: 22)
            student.logged_score(90)
            student.logged_score(80)
            student.logged_score(70)
            expect(student.scores).to eq([90, 80, 70])
        end
    end
end