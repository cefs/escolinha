class Discipline < ActiveRecord::Base
   attr_accessible :name

   validates_presence_of :name   
   validates_uniqueness_of :name   

   has_many :rooms
   has_many :teachers, :through => :rooms

end