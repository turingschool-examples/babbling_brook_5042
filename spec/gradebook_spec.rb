require 'spec_helper'

RSpec.describe GradeBook do
  describe '#initialize' do
    it "exists" do
      grade_book = GradeBook.new("Mr. Scrynt")   

      expect(grade_book).to be_a GradeBook
    end

    it "can have an instructor" do
      grade_book = GradeBook.new("Mr. Scrynt")  

      expect(grade_book.instructor).to eq ("Mr. Scrynt")
    end

    it "can have courses" do
      grade_book = GradeBook.new("Mr. Scrynt")  

      expect(grade_book.courses).to eq []
    end
  end

  

end