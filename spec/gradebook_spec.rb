require 'spec_helper'

RSpec.describe GradeBook do
  describe '#initialize' do
    it "exists" do
      gradebook = GradeBook.new("Mr. Scrynt")   

      expect(gradebook).to be_a GradeBook
    end

    it "can have an instructor" do
      gradebook = GradeBook.new("Mr. Scrynt")  

      expect(gradebook.instructor).to eq ("Mr. Scrynt")
    end

    it "can have courses" do
      gradebook = GradeBook.new("Mr. Scrynt")  

      expect(gradebook.courses).to eq []
    end
  end

  

end