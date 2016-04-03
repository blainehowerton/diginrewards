class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
  	@users = User.all
	end

	def new
    @user = User.new
	end

	def show
	end

	def create
	@user = User.new(user_params)

		respond_to do |format|
	      if @user.save
	        format.html { redirect_to '/onboarding', notice: 'User was successfully created.' }
	        format.json { render :show, status: :created, location: @user }
	      else
	        format.html { render :new }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def retailer_params
      params.require(:user).permit(:username, :cause_id, :paypalID, :street_address, :city, :state, :zip, :phone, :email, :encrypted_password)
    end

end
