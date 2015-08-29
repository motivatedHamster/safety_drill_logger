class Classroom < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  has_many :drills, dependent: :destroy
  # connecting classrooms directly to drill_types to allow for different drill_type attributes per classroom
  # ex: one classroom only has to perform fire drills quarterly while the other classrooms have to perform them monthly
  has_many :drill_types, dependent: :destroy
  belongs_to :teacher
  accepts_nested_attributes_for :drill_types
  accepts_nested_attributes_for :teachers

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
