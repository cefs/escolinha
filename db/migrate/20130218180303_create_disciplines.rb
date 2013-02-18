class CreateDisciplines < ActiveRecord::Migration
   def up
      create_table :disciplines do |t|
         t.string :name, :null => false

         t.timestamps
      end
   end

   def down
      drop_table :disciplines
   end
end
