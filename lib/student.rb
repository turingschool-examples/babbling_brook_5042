class Student
    attr_reader :name, :age, :scores
    
    def initialize(attributes)
        @name = attributes[:name]
        @age = attributes[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end

    def grade
        @scores.sum / @scores.size.to_f
    end

end