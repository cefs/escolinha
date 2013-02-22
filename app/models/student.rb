class Student < ActiveRecord::Bas
   attr_accessible :name, :course_id

   belongs_to :course

   validates_presence_of :name
end
