require 'spec_helper'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook1 = Gradebook.new("Teachy McTeacherson", [])
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
    @student3 = Student.new({name: "Borpan", age: 69})
    @stuff101 = Course.new("Stuff 101", 7)
    @things102 = Course.new("Things 102", 3)
  
  end

  it 'can initialize'do
    expect(@gradebook1).to be_an_instance_of(Gradebook)
    expect(@stuff101).to be_an_instance_of(Course)
    expect(@student3).to be_an_instance_of(Student)
    expect(@gradebook1.courses).to eq([])
    
  end

  it 'can have a course added' do
    @gradebook1.add_course(@stuff101)
    # expect(@gradebook1.courses).to eq([@stuff101])
    @gradebook1.add_course(@things102)
    expect(@gradebook1.courses).to eq([@stuff101, @things102])
  end
end