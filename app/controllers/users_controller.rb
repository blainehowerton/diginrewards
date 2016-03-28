class UsersController < ApplicationController

  def index
  	@users = User.all
  	end

	def new
    # @onboarding = Retailer.new
  	end

  	def show
  	end

  	def create
    # @onboarding = Retailer.new
	end

end
