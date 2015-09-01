class RemoveConstraintNullDrills < ActiveRecord::Migration
  def change
    change_column :drills, :date_due, :date, :null => true
  end
end
