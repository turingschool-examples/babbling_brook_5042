require 'spec_helper'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end

  it 'can initialize'do
    expect(@student).to be_an_instance_of(Student)
    expect(@student.name).to eq("Morgan")
    expect(@student.age).to eq(21)
  end
end