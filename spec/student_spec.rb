require './lib/student'

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