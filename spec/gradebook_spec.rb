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
    end
end