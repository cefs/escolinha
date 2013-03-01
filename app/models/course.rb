class Course < ActiveRecord::Base
   extend FriendlyId

   attr_accessible :name

   has_many :students   
   has_many :rooms

   validates_presence_of :name

   friendly_id :name, :use => :slugged
end