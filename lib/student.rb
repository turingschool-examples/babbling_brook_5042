class Student
  attr_reader :name, :age, :scores
  require pry

  def initialize(params={})
    @name = params[:name]
    @age = params[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    return 0 if @scores.empty?
    total_score = @scores.reduce(:+)
    total_score / @scores.length.to_f
  end
end