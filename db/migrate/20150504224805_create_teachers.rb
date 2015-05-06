class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name, limit: 255, null: false
      t.string :email, limit: 255

      t.timestamps null: false
    end
  end
end
