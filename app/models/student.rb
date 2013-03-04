#encoding: UTF-8
class Student < ActiveRecord::Base
   extend FriendlyId

   attr_accessible :name, :email, :course_id

   belongs_to :course #:counter_cache => true

   validates_presence_of :name, :email

   friendly_id :name, :use => :slugged
end
