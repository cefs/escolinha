class CreateStudents < ActiveRecord::Migration
   def up
      create_table :students do |t|
         t.string :name, :null => false

         t.timestamps
      end
   end

   def down
      drop_table :students
   end
end
