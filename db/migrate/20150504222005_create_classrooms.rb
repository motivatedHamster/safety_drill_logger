class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name, limit: 255
      t.references :teacher, index: true

      t.timestamps null: false
    end
    add_index :classrooms, :name, unique: true
    add_foreign_key :classrooms, :teachers
  end
end
