class AdminMailer < ApplicationMailer

def admin_email(user)
	@user = user
	@url  = 'http://example.com/login'
    mail(to: "bhowerton@yghdtv.com", subject: 'Welcome to My Awesome Site')
  end
end
