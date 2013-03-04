class Teacher < ActiveRecord::Base
   extend FriendlyId

	attr_accessible :name, :picture

	validates_presence_of :name

   mount_uploader :picture, PictureUploader
   friendly_id :name, :use => :slugged

   has_many :rooms
   has_many :disciplines, :through => :rooms

   def thumb_url
      self.picture.thumb.url
   end

   def has_picture
      self.picture?
   end
end