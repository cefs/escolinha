class Room < ActiveRecord::Base
   attr_accessible :course_id, :teacher_id, :discipline_id

   belongs_to :course
   belongs_to :teacher
   belongs_to :discipline

   validates_presence_of :course, :teacher, :discipline
end