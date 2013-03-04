class Course < ActiveRecord::Base
   extend FriendlyId

   attr_accessible :name

   has_many :students   
   has_many :rooms

   validates_presence_of :name

   friendly_id :name, :use => :slugged

   def self.search(query,page)
      if query.present?         
         joins("LEFT JOIN rooms on rooms.course_id = courses.id LEFT JOIN teachers on rooms.teacher_id = teachers.id").         
         where(["courses.name #{AdapterSpecific.like_case_insensitive} :query OR teachers.name #{AdapterSpecific.like_case_insensitive} :query", :query => "%#{query}%"]).group("courses.id").order("courses.name")
      else         
         paginate :page => page, :size => 8
      end
   end
end