class DrillType < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  validates :required_frequency, presence: true
  has_many :drills
end
