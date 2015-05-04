class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, limit: 255
      t.string :email, limit: 255

      t.timestamps null: false
    end
    add_index :teachers, :name, unique: true
  end
end
