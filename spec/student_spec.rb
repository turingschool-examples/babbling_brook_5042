require 'rspec'
require 'student'

RSpec.describe Student do
  it 'initializes with a name and age' do
    student = Student.new('Morgan', 21)
    expect(student.name).to eq('Morgan')
    expect(student.age).to eq(21)
  end

  it 'does not have any scores by default' do
    student = Student.new('Morgan', 21)
    expect(student.scores).to be_empty
  end

  context 'when log_score is called' do
    it 'adds a score to the scores array' do
      student = Student.new('Morgan', 21)
      student.log_score(89)
      student.log_score(78)
      expect(student.scores).to include(89, 78)
    end

    it 'calculates the average grade' do
      student = Student.new('Morgan', 21)
      student.log_score(89)
      student.log_score(78)
      expect(student.grade).to eql(83.5)
    end
  end
end
