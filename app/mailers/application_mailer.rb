class ApplicationMailer < ActionMailer::Base
  default from: "reminder@drills.com"
  layout 'mailer'
end
