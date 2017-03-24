class AdminMailer < ApplicationMailer

def admin_email(user)
	@user = user
    mail(to: "bhowerton@yghdtv.com, diginco@gmail.com", subject: 'Dig In Rewards Notification')
end

def new_transaction_email(transaction)
  	@transaction = transaction
  	@user = User.new
  	mail(to: "bhowerton@yghdtv.com, diginco@gmail.com", subject: 'Dig In Rewards Notification')
end

def new_user_email(user)
	@newuser = user
	mail(to: @newuser.email, subject: 'Welcome to Dig In Rewards')
end

end
