class AddColumnSlugToTables < ActiveRecord::Migration
   def change
      add_column :teachers,      :slug, :string
      add_column :disciplines,   :slug, :string
      add_column :students,      :slug, :string
      add_column :courses,       :slug, :string

      add_index :teachers,    :slug, :unique => true
      add_index :disciplines, :slug, :unique => true
      add_index :students,    :slug, :unique => true
      add_index :courses,     :slug, :unique => true
   end
end
