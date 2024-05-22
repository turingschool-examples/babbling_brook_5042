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
end