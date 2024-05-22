


# pry(main)> require './lib/student'
# # => true

# pry(main)> student = Student.new({name: "Morgan", age: 21})    
# # => #<Student:0x00007fe196b0c050...>

# pry(main)> student.name
# # => "Morgan"

# pry(main)> student.age
# # => 21

# pry(main)> student.scores
# # => []

# pry(main)> student.log_score(89)

# pry(main)> student.log_score(78)    

# pry(main)> student.scores
# # => [89, 78]

# pry(main)> student.grade # Average of all the scores
# # => 83.5