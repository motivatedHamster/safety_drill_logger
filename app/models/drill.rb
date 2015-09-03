class Drill < ActiveRecord::Base
  after_save :enqueue_reminder

  validates :date_due, presence: true

  belongs_to :teacher
  belongs_to :classroom
  belongs_to :drill_type

  def enqueue_reminder
    DateDueReminderMailer.reminder_email(self).deliver_later!(wait_until: reminder_time)
  end

  def reminder_time
    now = Time.now
    reminder_time = (self.date_due - 7.days).to_time

    return [now, reminder_time].max
  end

  def self.create(fields)
    drill = Drill.new

    drill.date_due = fields[:date_due].to_date
    drill.teacher = Teacher.find_or_create(fields)
    drill.classroom = Classroom.find_or_create(fields)
    drill.drill_type = DrillType.find_or_create(fields)
    drill.save!

    return drill
  end

end
