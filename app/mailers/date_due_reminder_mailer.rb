class DateDueReminderMailer < ApplicationMailer

  def reminder_email(drill)
    @drill = drill
    mail(to: drill.teacher.email, subject: 'Drill Due in 7 Days')
  end
end
