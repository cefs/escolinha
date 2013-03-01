#encoding: UTF-8
class Student < ActiveRecord::Base
   extend FriendlyId

   attr_accessible :name, :course_id

   belongs_to :course #:counter_cache => true

   validates_presence_of :name

   friendly_id :name, :use => :slugged
end
