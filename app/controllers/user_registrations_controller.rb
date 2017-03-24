class UserRegistrationsController < Devise::RegistrationsController

	def create
		super
		if @user.persisted?
			AdminMailer.admin_email(@user).deliver_now
			AdminMailer.new_user_email(@user).deliver_now
		end
	end

	def sign_up_params
    params.require(:user).permit(:username, :paypalID, :cause_id, :email, :password, :password_confirmation)
  	end

  	def account_update_params
    params.require(:user).permit(:username, :paypalID, :address, :city, :state, :zip, :phone, :email, 
    	:cause_id, :email, :password, :password_confirmation)
  	end

	def after_sign_up_path_for(resource)
    '/users' # Or :prefix_to_your_route
  end

end