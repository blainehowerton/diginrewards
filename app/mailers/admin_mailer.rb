class AdminMailer < ApplicationMailer

def admin_email(user)
	@user = user
    mail(to: "bhowerton@yghdtv.com", subject: 'Welcome to My Awesome Site')
  end
end
