class OnboardingController < ApplicationController

	def index
  	@transactions = Transaction.all
  	@retailers = Retailer.all
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
