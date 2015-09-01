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
end
