class DrillType < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  validates :required_frequency, presence: true, inclusion: { in: %w(weekly monthly yearly quarterly twice_yearly), message: "%{value} must be one of: weekly, monthly, yearly, quarterly, twice_yearly" }
  has_many :drills
  belongs_to :classroom
  
  # required_frequency should be one of: weekly, monthly, yearly, quarterly, twice_yearly
  # more flexible implementation would have frequency per period

  def self.find_or_create(fields)
    name = fields[:drill_type]

    drill_type = DrillType.find_by_name(name)
    if !drill_type
      drill_type = DrillType.new
      drill_type.name = name
      drill_type.required_frequency = fields[:required_frequency]
      drill_type.save!
    end

    return drill_type
  end

end
