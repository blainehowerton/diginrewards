class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 

  # Create a defaults object and save values from the Defaults table to the object
    @defaults = Default.new
    @defaults = Default.first

def after_sign_out_path_for(resource_or_scope)
  	request.referrer
	end

end
