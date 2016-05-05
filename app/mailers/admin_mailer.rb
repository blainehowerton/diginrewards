class AdminMailer < ApplicationMailer

def admin_email(user)
	@user = user
    mail(to: "bhowerton@yghdtv.com, diginco@gmail.com", subject: 'Dig In Rewards Notification')
  end
end
