class ApplicationMailer < ActionMailer::Base
  default from: 'diginco@gmail.com',
  		  reply_to: 'diginco@gmail.com'
  layout 'mailer'
end
