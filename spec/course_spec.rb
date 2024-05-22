require 'spec_helper'

RSpec.describe Course do
  describe '#initialize' do
    it "exists" do
      course = Course.new("Calculus", 2)   

      expect(course).to be_a Course
    end

    it "has a name" do
      course = Course.new("Calculus", 2)   

      expect(course.name).to eq ("Calculus")
    end

    it "has a capacity" do
      course = Course.new("Calculus", 2)   

      expect(course.capacity).to be 2
    end

    it "has students" do
      course = Course.new("Calculus", 2)   

      expect(course.students).to eq []
    end



  end









end