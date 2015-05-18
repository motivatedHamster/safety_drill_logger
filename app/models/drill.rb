class Drill < ActiveRecord::Base
  validates :date_performed, presence: true
  belongs_to :teacher
  belongs_to :classroom
  belongs_to :drill_type
end
