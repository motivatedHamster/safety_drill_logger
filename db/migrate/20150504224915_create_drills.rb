class CreateDrills < ActiveRecord::Migration
  def change
    create_table :drills do |t|
      t.date :date_performed, null: false
      t.references :teacher, index: true
      t.references :classroom, index: true
      t.references :drill_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :drills, :teachers
    add_foreign_key :drills, :classrooms
    add_foreign_key :drills, :drill_types
  end
end
