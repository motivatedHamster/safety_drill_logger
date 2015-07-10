class DrillType < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  validates :required_frequency, presence: true, inclusion: { in: %w(weekly monthly yearly quarterly twice_yearly), message: "%{value} must be one of: weekly, monthly, yearly, quarterly, twice_yearly" }
  has_many :drills
  belongs_to :classroom
  
  # required_frequency should be one of: weekly, monthly, yearly, quarterly, twice_yearly
  # more flexible implementation would have frequency per period
end
