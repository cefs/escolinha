class Teacher < ActiveRecord::Base
   extend FriendlyId

	attr_accessible :name

	validates_presence_of :name
   
   friendly_id :name, :use => :slugged

   has_many :rooms
   has_many :disciplines, :through => :rooms
end