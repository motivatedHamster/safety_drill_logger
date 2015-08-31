class AddDateDueToDrills < ActiveRecord::Migration
  def change
    add_column :drills, :date_due, :date
  end
end
