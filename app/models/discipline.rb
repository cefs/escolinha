class Discipline < ActiveRecord::Base
   extend FriendlyId
   
   attr_accessible :name

   validates_presence_of :name   

   has_many :rooms
   has_many :teachers, :through => :rooms

   friendly_id :name, :use => :slugged
end