class OnboardingController < ApplicationController

	def new
    @retailer = Retailer.new
    @cause = Cause.new
  	end

  	def create
    @retailer = Retailer.new
    @cause = Cause.new

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end
end
