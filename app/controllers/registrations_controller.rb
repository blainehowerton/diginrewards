class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :cause_id, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :cause_id, :email, :password, :password_confirmation)
  end

  def after_sign_up_path_for(resource)
    '/users' # Or :prefix_to_your_route
  end
end