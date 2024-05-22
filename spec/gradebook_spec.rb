require 'spec_helper'

RSpec.describe Gradebook do 
    before(:each) do
        @gradebook = Gradebook.new("Instructor_1")
        @course = Course.new("Calculus", 2)
    end
        

    it 'creates a gradebook for each instructor 'do
        expect(@gradebook.instructor).to eq("Instructor_1")
    end

    describe "add course" do
        it "will add a course add a course to a gradebook" do
            @gradebook.add_course(@course)
            expect(@gradebook.courses).to include(@course)
        end
    end




end