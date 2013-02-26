class AddCounterCachesToCourse < ActiveRecord::Migration
   def up
      add_column :courses, :students_count, :integer, :default => 0
   end

   def down
      remove_column :courses, :students_count
   end
end
