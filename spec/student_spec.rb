require './lib/student'

class Student
    attr_reader(:name, :age, :scores)
    def initialize(student)
        @student = student
        puts "student"
    end
end   

student = Student.new([name: "Morgan", age: 21])
student.name = "Morgan"
student.age = 21
student.scores = []
student.log_score(89)
student.log_score(78)
student.scores = [89, 78]
# student.grade = 83.5
# add numbers in array, divide by number of items in array, 2
def average([89, 78])
    # @student.grade = student.grade
    # student.grade = average
end    