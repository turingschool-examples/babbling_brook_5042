class Student
  attr_reader :name,
              :age,
              :scores,
              :current_grade

  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_score(grade)
    @scores << grade
  end

  def grade
    # sum element int values 
    # -> divide by # of elements
    # return as float
    (@scores.sum.to_f / @scores.length)
  end
end