require 'pry'
require './lib/student'
require 'rspec'

RSpec.configure do |config|
    config.formatter = :documentation
    end

describe Student do
    it "is an instance of student"  do
      @student = Student.new({name: "Morgan", age: 21}) 
      expect(@student).to be_a Student
    end  

    it "has attributes" do
        @student = Student.new({name: "Morgan", age: 21}) 
        expect(@student.name).to eq("Morgan")
        expect(@student.age).to eq(21)
    end

    it 'has can get grades' do
        @student = Student.new({name: "Morgan", age: 21}) 
        expect(@student.scores).to eq([])
    end

    it 'can log grades' do
        @student = Student.new({name: "Morgan", age: 21}) 
        expect(@student.scores).to eq([])
        expect(@student.log_scores(89)).to eq([89])
    end

    it 'can log other grades' do
        @student = Student.new({name: "Morgan", age: 21}) 
        expect(@student.scores).to eq([])
        expect(@student.log_scores(89)).to eq([89])
        expect(@student.log_scores(78)).to eq([89, 78])
    end

    it 'can average grades' do
        @student = Student.new({name: "Morgan", age: 21}) 
        # expect(@student.scores).to eq([])
        expect(@student.log_scores(89)).to eq([89])
        expect(@student.log_scores(78)).to eq([89, 78])  
    end

end
   

