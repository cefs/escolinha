class CreateJoinRooms < ActiveRecord::Migration
   def up
      create_table :rooms do |t|
         t.integer :discipline_id,  :null => false
         t.integer :teacher_id,     :null => false
         t.integer :course_id,      :null => false
      end
   end

   def down
      drop_table :rooms
   end
end
