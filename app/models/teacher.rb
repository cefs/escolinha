class Teacher < ActiveRecord::Base
	attr_accessible :name

	validates_presence_of :name

   has_many :rooms
   has_many :disciplines, :through => :rooms
end