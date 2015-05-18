class CreateDrillTypes < ActiveRecord::Migration
  def change
    create_table :drill_types do |t|
      t.string :name, limit: 255, null: false
      t.string :required_frequency, limit: 255, null: false
      t.references :classroom, index: true

      t.timestamps null: false
    end
    add_foreign_key :drill_types, :classrooms
  end
end
