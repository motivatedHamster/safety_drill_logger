class Classroom < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  has_many :drills, dependent :destroy
  has_many :drill_types, dependent :destroy
  belongs_to :teacher

  def needs_drill?(drill_type)
    # return true if drill of drill_type has not occurred within current frequency
  end
  
  def deadline?(drill_type)
    # returns number of days left in current frequency if needs_drill?(drill_type) = true, otherwise returns nil
  end
  
  def conduct_drill(teacher, drill_type, date_conducted)
    # creates a new drill for this classroom & adds it to the database
  end
end