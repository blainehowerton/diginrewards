class OnboardingController < ApplicationController

	def index
  	@retailers = Retailer.all
  	@users = User.all
  	@causes = Cause.all
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
