class Classroom < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  has_many :drills, dependent :destroy
  belongs_to :teacher
end
