class RemoveConstraintNullDrills2 < ActiveRecord::Migration
  def change
    change_column :drills, :date_performed, :date, :null => true
  end
end
