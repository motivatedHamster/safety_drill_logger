class Drill < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classroom
  belongs_to :drill_type
end
