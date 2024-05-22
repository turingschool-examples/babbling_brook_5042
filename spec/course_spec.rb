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
    end
end