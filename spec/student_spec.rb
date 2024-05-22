require 'spec_helper'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'can initialize'do
    expect(@student).to be_an_instance_of(Student)
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
    expect(@student.scores).to eq([])
  end

  it 'can log scores' do
    @student.log_score(89)
    @student.log_score(78) 

    expect(@student.scores).to eq([89, 78])
  end

  it 'can calculate students grade' do
    @student.log_score(89)
    @student.log_score(78)
    expect(@student.grade).to eq(83.5)
  end
end