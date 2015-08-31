class AlterColumnDatePerformedOnDrills < ActiveRecord::Migration
  def change
    change_column_null :drills, :date_performed, true
  end
end
