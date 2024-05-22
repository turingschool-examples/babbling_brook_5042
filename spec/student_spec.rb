require 'spec_helper'

RSpec.describe Student do
    before(:each) do 
        @student  = Student.new(name: 'Morgan', age: 21)
    end

    it "creates student and assigns name and age" do
        expect(@student.name).to eq('Morgan')
        expect(@student.age).to eq(21)
    end
    it 'assigns scores to empty array' do
        expect(@student.scores).to eq([])
    end

    it "logs a score for the students and puts it in scores array" do

        @student.log_score(89)
        @student.log_score(78)
        expect(@student.scores).to eq([89,78])
    end

    it "calculates a grade for the students" do

        @student.log_score(89)
        @student.log_score(78)
        
        expect(@student.grade).to eq((89+78)/2)
    end
end