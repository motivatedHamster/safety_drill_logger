class Teacher < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  validates :email, presence: true, length: { maximum: 255, too_long: "%{count} characters maximum" }
  has_many :classrooms
  has_many :drills

  def self.find_or_create(fields)
    name = fields[:teacher]

    teacher = Teacher.find_by_name(name)
    if !teacher
      teacher = Teacher.new
      teacher.name = name
      teacher.email = fields[:email]
      teacher.save!
    end

    return teacher
  end

end
