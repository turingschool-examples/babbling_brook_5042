require "./lib/student"
require "pry" 

RSpec.describe Student do
  let(:student) { Student.new(name: "Morgan", age: 21) }


  describe "#name" do
    it "returns the name of the student" do
      expect(student.name).to eq("Morgan")
    end
  end

  describe "#age" do
    it "returns the age of the student" do
      expect(student.age).to eq(21)
    end
  end

  describe "#scores" do
    it "returns an empty array initially" do
      expect(student.scores).to eq([])
    end
  end

  describe "#log_score" do
    it "logs a score for the student" do
      student.log_score(89)
      expect(student.scores).to eq([89])
    end

    it "logs multiple scores for the student" do
      student.log_score(89)
      student.log_score(78)
      expect(student.scores).to eq([89, 78])
    end
  end

  describe "#grade" do
    it "calculates the average of all the scores" do
      student.log_score(89)
      student.log_score(78)
      expect(student.grade).to eq(83.5)
    end
  end
end