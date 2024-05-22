require 'rspec'
require './lib/student'

RSpec.describe Student do
    it 'has a name and age' do
        student = Student.new({name: "Morgan", age: 21})
        expect(student.name).to eq("Morgan")
        expect(student.age).to eq(21)
    end

    it 'can accept scores' do
        student = Student.new({name: "Morgan", age: 21})
        student.log_score(89)
        student.log_score(78)
        expect(student.scores).to eq([89, 78])
    end

    it 'can average a grade' do
        student = Student.new({name: "Morgan", age: 21})
        student.log_score(89)
        student.log_score(78)
        expect(student.grade).to eq (83.5)
    end
end
