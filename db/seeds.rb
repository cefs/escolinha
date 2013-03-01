#encoding: UTF-8

Course.delete_all
Teacher.delete_all
Discipline.delete_all
Student.delete_all
Room.delete_all


22.times.each do |i|
   Course.create :name => "Turma #{i}" 
end
22.times.each do |i|
   Discipline.create :name => "Disciplina #{i}" 
end

22.times.each do |i|
   Student.create :name => "Carlos #{i}", :course_id => i + 1
end

22.times.each do |i|
   Teacher.create :name => "Pedro #{i}"
end
