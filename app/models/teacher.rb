class Teacher < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  validates :email, presence: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  has_many :classrooms
  has_many :drills
end
 