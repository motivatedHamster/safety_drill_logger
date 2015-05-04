class CreateDrillTypes < ActiveRecord::Migration
  def change
    create_table :drill_types do |t|
      t.string :name, limit: 255
      t.string :required_frequency, limit: 255

      t.timestamps null: false
    end
    add_index :drill_types, :name, unique: true
  end
end
