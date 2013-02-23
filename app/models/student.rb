class Student < ActiveRecord::Base
   attr_accessible :name, :course_id

   belongs_to :course

   validates_presence_of :name
   validates_uniqueness_of :name
end
