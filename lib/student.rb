class Student
    attr_reader :name, :age, :scores
    def initialize(name, age)
        @name = name
        @age = age
        @scores = []
    end

    def log_score(score)
        @scores << score
    end
    # By dividing by the length of the array you an average
    def grade
        @scores.sum.to_f / @scores.length
    end
end