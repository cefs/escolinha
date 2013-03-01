#encoding: UTF-8

Course.delete_all
Teacher.delete_all
Discipline.delete_all
Student.delete_all
Room.delete_all


10.times.each do |i|
   Course.create :name => "Turma #{i + 1}" 
end
10.times.each do |i|
   Discipline.create :name => "Disciplina #{i + 1}" 
end

10.times.each do |i|
   Student.create :name => "João Pedro#{i + 1}º", :course_id => i + 1
end

10.times.each do |i|
   Teacher.create :name => "Luis Pedro #{i + 1}º"
end
