require 'spec_helper.rb'

# pry(main)> require './lib/student'
# # => true
RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end
  
  it "is an instance of the Student class" do
    expect(@student).to be_an_instance_of(Student)

    # pry(main)> student = Student.new({name: "Morgan", age: 21})    
    # # => #<Student:0x00007fe196b0c050...>
  end
  
  it "has a name" do
    expect(@student.name).to eq("Morgan")
    
    # pry(main)> student.name
    # # => "Morgan"
  end

  it "has an age" do
    expect(@student.age).to eq(21)

    # pry(main)> student.age
    # # => 21
  end
  
  it "has a score" do
    expect(@student.scores).to eq([])

    # pry(main)> student.scores
    # # => []
  end

  it "can log a student's scores" do
    @student.log_score(89)
    # pry(main)> student.log_score(89)
    @student.log_score(78)
    # pry(main)> student.log_score(78)    

    expect(@student.scores).to eq([89, 78])

    # pry(main)> student.scores
    # # => [89, 78]
  end

  it "can average student scores" do
    @student.log_score(89)
    # pry(main)> student.log_score(89)
    @student.log_score(78)
    # pry(main)> student.log_score(78) 

    expect(@student.grade).to eq(83.5)

    # pry(main)> student.grade # Average of all the scores
    # # => 83.5
  end
end








